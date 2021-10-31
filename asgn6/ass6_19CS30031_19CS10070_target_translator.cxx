#include "ass6_19CS30031_19CS10070_translator.h"

string inputFileName, assemblyFileName;
ActivationRecord *currentAR; // points to the activation record of the current function
ofstream assemblyFile; // assembly file

map<int, string> retSizeRegMap = { {1, "al"}, {4, "eax"}, {8, "rax"} };
map<int, string> arg1SizeRegMap = { {1, "dil"}, {4, "edi"}, {8, "rdi"} };
map<int, string> arg2SizeRegMap = { {1, "sil"}, {4, "esi"}, {8, "rsi"} };
map<int, string> arg3SizeRegMap = { {1, "dl"}, {4, "edx"}, {8, "rdx"} };
map<int, string> arg4SizeRegMap = { {1, "cl"}, {4, "ecx"}, {8, "rcx"} };
map<int, map<int, string>> argNum2RegMap = { {1, arg1SizeRegMap}, {2, arg2SizeRegMap}, {3, arg3SizeRegMap}, {4, arg4SizeRegMap} };

string getReg(string paramName, int paramNum, int size) {
    string reg = argNum2RegMap[paramNum][size];
    return "%" + reg;
}

void loadParam(string paramName, int paramNum) {
    int size = currentTable->lookup(paramName)->size;
    string reg = getReg(paramName, paramNum, size);
    string movIns = "";
    if (size == 1) {
        movIns = "movb";
    } else if (size == 4) {
        movIns = "movl";
    } else if (size == 8) {
        movIns = "movq";
    }
    assemblyFile << "\t" << setw(8) << movIns << reg << ", " << currentAR->displacement[paramName] << "(%rbp)" << endl;
}

void translate() {
    assemblyFile.open(assemblyFileName);

    assemblyFile << left;
    assemblyFile << "\t.file\t\"" + inputFileName + "\"" << endl;

    assemblyFile << endl;
    // activation records
    for(auto &symbol : globalTable->symbols) {
        if(symbol.second.category == Symbol::FUNCTION) {
            assemblyFile << "#\t" << symbol.second.name << endl;
            for(auto &record: symbol.second.nestedTable->activationRecord->displacement) {
                assemblyFile << "#\t" << record.first << ": " << record.second << endl;
            }
        }
    }
    assemblyFile << endl;

    // string literals in the rodata section
    if(stringLiterals.size() > 0) {
        assemblyFile << "\t.section\t.rodata" << endl;
        int i = 0;
        for(auto &stringLiteral : stringLiterals) {
            assemblyFile << ".LC" << i++ << ":" << endl;
            assemblyFile << "\t.string\t" << stringLiteral << endl;
        }
    }

    // global variables (uninitialised)
    for(auto &symbol:globalTable->symbols) {
        if(symbol.second.initialValue.empty() && symbol.second.category == Symbol::GLOBAL) {
            assemblyFile << "\t.comm\t" << symbol.first << "," << symbol.second.size << "," << symbol.second.size << endl;
        }
    }

    // convert tac labels to assembly labels
    map<int, string> labelMap;
    int quadNum = 1, labelNum = 0;
    for(auto &quad:quadArray) {
        if(quad->op == "label") {
            labelMap[quadNum] = ".LFB" + toString(labelNum);
        } else if(quad->op == "labelend") {
            labelMap[quadNum] = ".LFE" + toString(labelNum);
            labelNum++;
        }
        quadNum++;
    }
    for(auto &quad:quadArray) {
        if(quad->op == "goto" or quad->op == "==" or quad->op == "!=" or quad->op == "<" or quad->op == ">" or quad->op == "<=" or quad->op == ">=") {
            int loc = stoi(quad->result);
            if(labelMap.find(loc) == labelMap.end()) {
                labelMap[loc] = ".L" + toString(labelNum);
                labelNum++;
            }
        }
    }


    bool inTextSpace = false;
    quadNum = 1;
    for(auto &quad:quadArray) {

        if(quad->op == "label") {
            if(!inTextSpace) {
                assemblyFile << "\t.text" << endl;
                inTextSpace = true;
            }

            currentTable = globalTable->lookup(quad->result)->nestedTable;
            currentAR = currentTable->activationRecord;

            // function prologue
            assemblyFile << "\t" << setw(8) << ".globl" << quad->result << endl;
            assemblyFile << "\t" << setw(8) << ".type" << quad->result << ", @function" << endl;
            assemblyFile << quad->result << ":" << endl;
            assemblyFile << labelMap[quadNum] << ":" << endl;
            assemblyFile << "\t" << ".cfi_startproc" << endl;
            assemblyFile << "\t" << setw(8) << "pushq" << "%rbp" << endl;
            assemblyFile << "\t.cfi_def_cfa_offset 16" << endl;
            assemblyFile << "\t.cfi_offset 6, -16" << endl;
            assemblyFile << "\t" << setw(8) << "movq" << "%rsp, %rbp" << endl;
            assemblyFile << "\t.cfi_def_cfa_register 6" << endl;
            assemblyFile << "\t" << setw(8) << "subq" << "$" << -currentAR->totalDisplacement << ", %rsp" << endl;

            int paramNum = 1;
            for(auto param:currentTable->parameters) {
                loadParam(param, paramNum);
                paramNum++;
            }
        } else if(quad->op == "labelend") {
            // function epilogue
            assemblyFile << labelMap[quadNum] << ":" << endl;
            assemblyFile << "\t" << setw(8) << "movq" << "%rbp, %rsp" << endl;
            assemblyFile << "\t" << setw(8) << "popq" << "%rbp" << endl;
            assemblyFile << "\t" << ".cfi_def_cfa 7, 8" << endl;
            assemblyFile << "\t" << "ret" << endl;
            assemblyFile << "\t" << ".cfi_endproc" << endl;
            assemblyFile << "\t" << setw(8) << ".size" << quad->result << ", .-" << quad->result << endl;

            inTextSpace = false;
        } else {
            if(inTextSpace) {
                // process the function instructions
            } else {
                // process the global assignments
            }
        }

        quadNum++;
    }


    assemblyFile.close();
}

int main(int argc, char const *argv[]) {
    inputFileName = string(argv[1]) + ".c";
    assemblyFileName = string(argv[1]) + ".s";

    // initialization of global variables
    tableCount = 0;
    temporaryCount = 0;
    globalTable = new SymbolTable("global");
    currentTable = globalTable;
    cout << left; // left allign

    // start parse
    yyin = fopen(inputFileName.c_str(), "r");
    yyparse();

    // update the symbol table and generate activation records
    globalTable->update();
    
    // print the symbol tables and quads
    globalTable->print();
    finalBackpatch();
    int ins = 1;
    for(auto it : quadArray) {
        cout<<setw(4)<<ins++<<": "; it->print();
    }

    // generate the assembly file
    translate();

    return 0;
}

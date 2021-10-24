#include "ass5_19CS30031_19CS10070_translator.h"

// Global Variables
vector<Quad *> quadArray;
SymbolTable *currentTable, *globalTable, *parentTable;
Symbol *currentSymbol;
SymbolType::typeEnum currentType;
int tableCount, temporaryCount;

// Implementation of symbol type class
SymbolType::SymbolType(typeEnum type, SymbolType *arrayType, int width) : type(type), width(width), arrayType(arrayType) {}

// Implementation of sizes for symbol types
int SymbolType::getSize()
{
    if (type == CHAR)
        return 1;
    else if (type == INT || type == POINTER)
        return 4;
    else if (type == FLOAT)
        return 8;
    else if (type == ARRAY)
        return width * (arrayType->getSize());
    else
        return 0;
}

// Function to print symbol type
string SymbolType::toString()
{
    if(this->type == SymbolType::VOID)
        return "void";
    else if(this->type == SymbolType::CHAR)
        return "char";
    else if(this->type == SymbolType::INT)
        return "int";
    else if(this->type == SymbolType::FLOAT)
        return "float";
    else if(this->type == SymbolType::POINTER)
        return "ptr(" + this->arrayType->toString() + ")";
    else if(this->type == SymbolType::FUNCTION)
        return "function";
    else if(this->type == SymbolType::ARRAY)
        return "array(" + to_string(this->width) + ", " + this->arrayType->toString() + ")";
    else if(this->type ==  SymbolType::BLOCK)
        return "block";
}

// Implementation of symbol table class
SymbolTable::SymbolTable(string name, SymbolTable *parent) : name(name), parent(parent) {}

Symbol *SymbolTable::lookup(string name)
{

    // If the symbol is present in the current table, return it
    auto it = (this)->symbols.find(name);
    if (it != (this)->symbols.end())
        return &(it->second);
    
    // If the symbol is not present in the current table, check the parent table
    Symbol *ret_ptr = nullptr;
    if (this->parent != NULL)
        ret_ptr = this->parent->lookup(name);

    // if the symbol is not present in the parent table, insert it in the current table and return
    if (this == currentTable && !ret_ptr)
    {
        this->symbols.insert({name, *(new Symbol(name))});
        return &((this)->symbols.find(name)->second);
    }
    return ret_ptr;
}

// Update the symbol table and its children with offsets
void SymbolTable::update()
{
    vector<SymbolTable *> visited; // vector to keep track of children tables to visit
    int offset;
    for (auto &map_entry : (this)->symbols)  // for all symbols in the table
    {
        if (map_entry.first == (this->symbols).begin()->first)  // if the symbol is the first one in the table then set offset of it to 0
        {
            map_entry.second.offset = 0;
            offset = map_entry.second.size;
        }
        else    // else update the offset of the symbol and update the offset by adding the symbols width
        {
            map_entry.second.offset = offset;
            offset += map_entry.second.size;
        }
        if (map_entry.second.nestedTable)  // remember children table
        {
            visited.push_back(map_entry.second.nestedTable);
        }
    }
    for (auto &table : visited)  // update children table
    {
        table->update();
    }
}

// Function to print the symbol table and its children
void SymbolTable::print()
{
    cout << string(140, '=') << endl;
    cout << "Table Name: " << this->name <<"\t\t Parent Name: "<< ((this->parent)?this->parent->name:"None") << endl;
    cout << string(140, '=') << endl;
    cout << setw(20) << "Name" << setw(40) << "Type" << setw(20) << "Initial Value" << setw(20) << "Offset" << setw(20) << "Size" << setw(20) << "Child" << "\n" << endl;
    // cout<<"Name\t Type\t InitialValue\t Offset\t Size\n";
    vector<SymbolTable *> tovisit;
    for (auto &map_entry : (this)->symbols)
    {
        cout << setw(20) << map_entry.first;
        fflush(stdout);
        cout << setw(40) << (map_entry.second.isFunction ? "function" : map_entry.second.type->toString());
        cout << setw(20) << map_entry.second.initialValue << setw(20) << map_entry.second.offset << setw(20) << map_entry.second.size;
        cout << setw(20) << (map_entry.second.nestedTable ? map_entry.second.nestedTable->name : "NULL") << endl;
        if (map_entry.second.nestedTable)
        {
            tovisit.push_back(map_entry.second.nestedTable);
        }
    }
    cout << string(140, '-') << endl;
    cout << "\n" << endl;
    for (auto &table : tovisit)
    {
        table->print();
    }
}

// Implementation of symbol class
Symbol::Symbol(string name, SymbolType::typeEnum type, string init) : name(name), type(new SymbolType(type)), offset(0), nestedTable(NULL), initialValue(init), isFunction(false)
{
    size = this->type->getSize();
}

Symbol *Symbol::update(SymbolType *type)
{
    this->type = type;
    size = this->type->getSize();
    return this;
}

Symbol *Symbol::convert(SymbolType::typeEnum type_)
{
    if ((this->type)->type == SymbolType::typeEnum::FLOAT)
    {
        if (type_ == SymbolType::typeEnum::INT)
        {
            Symbol *fin_ = gentemp(type_);
            emit("=", fin_->name, "Float_TO_Int(" + this->name + ")");
            return fin_;
        }
        else if (type_ == SymbolType::typeEnum::CHAR)
        {
            Symbol *fin_ = gentemp(type_);
            emit("=", fin_->name, "Float_TO_Char(" + this->name + ")");
            return fin_;
        }
        return this;
    }
    else if ((this->type)->type == SymbolType::typeEnum::INT)
    {
        if (type_ == SymbolType::typeEnum::FLOAT)
        {
            Symbol *fin_ = gentemp(type_);
            emit("=", fin_->name, "INT_TO_Float(" + this->name + ")");
            return fin_;
        }
        else if (type_ == SymbolType::typeEnum::CHAR)
        {
            Symbol *fin_ = gentemp(type_);
            emit("=", fin_->name, "INT_TO_Char(" + this->name + ")");
            return fin_;
        }
        return this;
    }
    else if ((this->type)->type == SymbolType::typeEnum::CHAR)
    {
        if (type_ == SymbolType::typeEnum::INT)
        {
            Symbol *fin_ = gentemp(type_);
            emit("=", fin_->name, "Char_TO_Int(" + this->name + ")");
            return fin_;
        }
        else if (type_ == SymbolType::typeEnum::FLOAT)
        {
            Symbol *fin_ = gentemp(type_);
            emit("=", fin_->name, "Char_TO_Float(" + this->name + ")");
            return fin_;
        }
        return this;
    }
    return this;
}

// Implementation of quad class
Quad::Quad(string result, string arg1, string op, string arg2) : result(result), op(op), arg1(arg1), arg2(arg2) {}
Quad::Quad(string result, int arg1, string op, string arg2) : result(result), op(op), arg1(toString(arg1)), arg2(arg2) {}

void Quad::print()
{
    auto binary_print = [this]()
    {
        cout << "\t" << this->result << " = " << this->arg1 << " " << this->op << " " << this->arg2 << endl;
    };
    auto relation_print = [this]()
    {
        cout << "\tif " << this->arg1 << " " << this->op << " " << this->arg2 << " goto " << this->result << endl;
    };
    auto shift_print = [this]()
    {
        cout << "\t" << this->result << " " << this->op[0] << " " << this->op[1] << this->arg1 << endl;
    };
    auto shift_print_ = [this](string tp)
    {
        cout << "\t" << this->result << " " << tp << " " << this->arg1 << endl;
    };
    if (this->op == "=")
    {
        cout << "\t" << this->result << " = " << this->arg1 << endl;
    }
    else if (this->op == "goto")
    {
        cout << "\tgoto " << this->result << endl;
    }
    else if (this->op == "return")
    {
        cout << "\treturn " << this->result << endl;
    }
    else if (this->op == "call")
    {
        cout << "\t" << this->result << " = call " << this->arg1 << ", " << this->arg2 << endl;
    }
    else if (this->op == "param")
    {
        cout << "\t" << "param " << this->result << endl;
    }
    else if (this->op == "label")
    {
        cout << this->result << endl;
    }
    else if (this->op == "=[]")
    {
        cout << "\t" << this->result << " = " << this->arg1 << "[" << this->arg2 << "]" << endl;
    }
    else if (this->op == "[]=")
    {
        cout << "\t" << this->result << "[" << this->arg1 << "] = " << this->arg2 << endl;
    }
    else if (this->op == "+" or this->op == "-" or this->op == "*" or this->op == "/" or this->op == "%" or this->op == "|" or this->op == "^" or this->op == "&" or this->op == "<<" or this->op == ">>")
    {
        binary_print();
    }
    else if (this->op == "==" or this->op == "!=" or this->op == "<" or this->op == ">" or this->op == "<=" or this->op == ">=")
    {
        relation_print();
    }
    else if (this->op == "=&" or this->op == "=*")
    {
        shift_print();
    }
    else if(this->op == "*=")
    {
        cout << "\t" << "*" << this->result << " = " << this->arg1 << endl;
    }
    else if (this->op == "=-")
    {
        shift_print_("= -");
    }
    else if (this->op == "~")
    {
        shift_print_("= ~");
    }
    else if (this->op == "!")
    {
        shift_print_("= !");
    }
    else
    {
        cout << this->op << this->arg1 << this->arg2 << this->result << endl;
        cout << "INVALID OPERATOR\n";
    }
}

// Implementation of emit funtions
void emit(string op, string result, string arg1, string arg2)
{
    Quad *q = new Quad(result, arg1, op, arg2);
    quadArray.push_back(q);
}
void emit(string op, string result, int arg1, string arg2)
{
    Quad *q = new Quad(result, arg1, op, arg2);
    quadArray.push_back(q);
}

// Implementation of backpatching functions
void backpatch(list<int> list_, int addr)
{
    for (auto &i : list_)
    {
        quadArray[i-1]->result = toString(addr);
    }
}
list<int> makeList(int base)
{
    return {base};
}

list<int> merge(list<int> first, list<int> second)
{
    list<int> ret = first;
    ret.merge(second);
    return ret;
}
// Implementation of Expression class functions

void Expression::toInt()
{
    if (this->type == Expression::typeEnum::BOOLEAN)
    {
        this->symbol = gentemp(SymbolType::typeEnum::INT);
        backpatch(this->trueList, static_cast<int>(quadArray.size()+1));
        emit("=", this->symbol->name, "true");
        emit("goto", toString(static_cast<int>(quadArray.size() + 2)));
        backpatch(this->falseList, static_cast<int>(quadArray.size()+1));
        emit("=", this->symbol->name, "false");
    }
}

void Expression::toBool()
{
    if (this->type == Expression::typeEnum::NONBOOLEAN)
    {
        this->falseList = makeList(static_cast<int>(quadArray.size()+1)); // update the falselist
        emit("==", "", this->symbol->name, "0");                        // emit general goto statements
        this->trueList = makeList(static_cast<int>(quadArray.size()+1));  // update the truelist
        emit("goto", "");
    }
}

// Implementation of other helper functions
int nextInstruction()
{
    return quadArray.size() + 1;
}

Symbol *gentemp(SymbolType::typeEnum type, string s)
{
    Symbol *temp = new Symbol("t" + toString(temporaryCount++), type, s);
    currentTable->symbols.insert({temp->name, *temp});
    return temp;
}
void changeTable(SymbolTable *table)
{
    currentTable = table;
}

bool typeCheck(Symbol *&a, Symbol *&b)
{
    std::function<bool(SymbolType *, SymbolType *)> type_comp = [&](SymbolType *first, SymbolType *second) -> bool
    {
        if (!first and !second)
            return true;
        else if (!first or !second or first->type != second->type)
            return false;
        else
            return type_comp(first->arrayType, second->arrayType);
    };
    if(type_comp(a->type, b->type))
        return true;
    else if(a->type->type == SymbolType::FLOAT or b->type->type == SymbolType::FLOAT) {
        a = a->convert(SymbolType::FLOAT);
        b = b->convert(SymbolType::FLOAT);
        return true;
    }
    else if(a->type->type == SymbolType::INT or b->type->type == SymbolType::INT) {
        a = a->convert(SymbolType::INT);
        b = b->convert(SymbolType::INT);
        return true;
    }
    else {
        return false;
    }
    // else if (a = b->convert(b->type->type))
    //     return true;
    // else if (b = a->convert(a->type->type))
    //     return true;
    // else
    //     return false;
}
// Implementation of utility functions
string toString(int i)
{
    return to_string(i);
}

string toString(float f)
{
    return to_string(f);
}

string toString(char c)
{
    return string(1, c);
}

int main() {
    // initialization of global variables
    tableCount = 0;
    temporaryCount = 0;
    globalTable = new SymbolTable("global");
    currentTable = globalTable;
    cout << left; // left allign
    yyparse();
    globalTable->update();
    globalTable->print();
    int ins = 1;
    for(auto it : quadArray) {
        cout<<setw(4)<<ins++<<": "; it->print();
    }
    return 0;
}

#include "ass5_19CS30031_19CS10070_translator.h"

// Global Variables
vector<Quad *> quadArray;
SymbolTable *currentTable, *globalTable, *parentTable;
Symbol *currentSymbol;
SymbolType::typeEnum currentType;
int tableCount, temporaryCount;

// Implementation of symbol type class
SymbolType::SymbolType(typeEnum type, SymbolType *arrayType, int width) : type(type), width(width), arrayType(arrayType) {}

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

// Implementation of symbol table class
SymbolTable::SymbolTable(string name, SymbolTable *parent) : name(name), parent(parent) {}

Symbol *SymbolTable::lookup(string name)
{
    auto it = (this)->symbols.find(name);
    if (it != (this)->symbols.end())
        return &(it->second);
    Symbol *ret_ptr = nullptr;
    if (this->parent != NULL)
        ret_ptr = this->parent->lookup(name);

    if (this == currentTable && !ret_ptr)
    {
        this->symbols.insert({name, *(new Symbol(name))});
        return &((this)->symbols.find(name)->second);
    }
    return ret_ptr;
}

// CHECK THIS PART
void SymbolTable::update()
{
    vector<SymbolTable *> visited;
    int offset;
    for (auto &map_entry : (this)->symbols)
    {
        if (map_entry.first == (this->symbols).begin()->first)
        {
            map_entry.second.offset = 0;
            offset = map_entry.second.size;
        }
        else
        {
            map_entry.second.offset = offset;
            offset += map_entry.second.size;
        }
        if(map_entry.second.nestedTable)
        {
            visited.push_back(map_entry.second.nestedTable);
        }
    }
    for(auto &table : visited)
    {
        table->update();
    }
}

void SymbolTable::print()
{
    cout << "Table Name: " << this->name<<"\t Parent Name: "<<((this->parent)?"None":this->parent->name) << endl;
    cout<<"Name\t Type\t InitialValue\t Offset\t Size\n";
    vector<SymbolTable *> tovisit;
    for (auto &map_entry : (this)->symbols)
    {
        cout << map_entry.first << " " << map_entry.second.type << " " <<map_entry.second.initialValue <<" "<<map_entry.second.offset << " " << map_entry.second.size << endl;
        if(map_entry.second.nestedTable)
        {
            tovisit.push_back(map_entry.second.nestedTable);
        }
    }
    for (auto& table: tovisit)
    {
        table->print();
    }
    cout << endl;
}

// Implementation of symbol class
Symbol::Symbol(string name, SymbolType::typeEnum type, string init) : name(name), type(new SymbolType(type)), offset(0), nestedTable(NULL), initialValue(init)
{
    size = this->type->getSize();
}

Symbol *Symbol::update(SymbolType *type)
{
    this->type = type;
    size = this->type->getSize();
    return this;
}

Symbol *Symbol::convert(SymbolType::typeEnum type)
{
    #warning "TODO I DONT UNDERSTAND"
}

// Implementation of quad class
Quad::Quad(string result, string arg1, string op, string arg2) : result(result), op(op), arg1(arg1), arg2(arg2) {}
Quad::Quad(string result, int arg1, string op, string arg2) : result(result), op(op), arg1(toString(arg1)), arg2(arg2) {}

void Quad::print()
{
    auto binary_print=[this]()
    {
        cout<<"\t"<<this->result<<" = "<<this->arg1<<" "<<this->op<<" "<<this->arg2<<endl;
    };
    auto relation_print=[this]()
    {
        cout<<"\t if"<<this->arg1<<" "<<this->op<<" "<<this->arg2<<" goto "<<this->result<<endl;
    };
    auto shift_print=[this]()
    {
        cout<<"\t"<<this->result<<" "<<this->op<<" "<<this->arg1<<endl;
    };
    auto shift_print_=[this](string tp)
    {
        cout<<"\t"<<this->result<<" "<<tp<<" "<<this->arg1<<endl;
    };
    if(this->op == "=")
    {
        cout<<this->result<<" = "<<this->arg1<<endl;
    }
    else if(this->op=="goto")
    {
        cout<<"goto "<<this->result<<endl;
    }
    else if(this->op=="return")
    {
        cout<<"return "<<this->arg1<<endl;
    }
    else if(this->op=="call")
    {
        cout<<this->result<<" = call "<<this->arg1<<", "<<this->arg2<<endl;
    }
    else if(this->op=="param")
    {
        cout<<"param "<<this->result<<endl;
    }
    else if(this->op == "label")
    {
        cout<<this->result<<endl;
    }
    else if(this->op=="=[]")
    {
        cout<<this->result<<" = "<<this->arg1<<"["<<this->arg2<<"]"<<endl;
    }
    else if(this->op=="[]=")
    {
        cout<<this->result<<"["<<this->arg1<<"] = "<<this->arg2<<endl;
    }
    else if(this->op=="+" or this->op=="-" or this->op=="*" or this->op=="/" or this->op=="%" or this->op=="|" or this->op=="^" or this->op=="&" or this->op=="<<" or this->op==">>")
    {
        binary_print();
    }
    else if(this->op=="==" or this->op=="!=" or this->op=="<" or this->op==">" or this->op=="<=" or this->op==">=")
    {
        relation_print();
    }
    else if(this->op=="=&" or this->op=="=*" or this->op=="*=")
    {
        shift_print();
    }
    else if(this->op=="uminus")
    {
        shift_print_("= -");
    }
    else if(this->op=="~")
    {
        shift_print_("= ~");
    }
    else if(this->op=="!")
    {
        shift_print_("= !");
    }
    else{
        cout<<"INVALID OPERATOR\n";
    }
    
}

// Implementation of emit funtions
void emit(string op, string result, string arg1, string arg2) {
    Quad *q = new Quad(result, arg1, op, arg2);
    quadArray.push_back(q);
}
void emit(string op, string result, int arg1, string arg2) {
    Quad *q = new Quad(result, arg1, op, arg2);
    quadArray.push_back(q);
}
#warning is this necessary?
void emit(string op,string result, float arg1, string arg2){
    Quad *q = new Quad(result, arg1, op, arg2);
    quadArray.push_back(q);
}


// Implementation of backpatching functions
void backpatch(list<int> list_, int addr)
{
    for(auto&i:list_)
    {
        quadArray[i]->result = toString(addr);
    }
}
list<int> makeList(int base)
{
    return {base};
}

list<int> merge(list<int> & first, list<int>& second)
{
    list<int> ret=first;
    ret.merge(second);
    return ret;
}
// Implementation of Expression class functions

void Expression::toInt()
{
    #warning should this be typeEnum int???
    if(this->type!=Expression::typeEnum::NONBOOLEAN)
    {
        this->falseList=makeList(static_cast<int>(quadArray.size()));                                                             // update the falselist
        emit("==","",this->symbol->name,"0");                                                                 // emit general goto statements
        this->trueList=makeList(static_cast<int>(quadArray.size()));                                                              // update the truelist
        emit("goto","");
    }
}

void Expression::toBool()
{
    if(this->type!=Expression::typeEnum::BOOLEAN)
    {
        this->symbol=gentemp(SymbolType::typeEnum::INT);
        backpatch(this->trueList,static_cast<int>(quadArray.size()));
        emit("=","",this->symbol->name,"true");
        emit("goto",toString(static_cast<int>(quadArray.size()+1)));
        backpatch(this->falseList,static_cast<int>(quadArray.size()));
        emit("=","",this->symbol->name,"false");
    }
}

// Implementation of other helper functions
#warning I AM NOT USING NEXTINSTRUCTION, THE PLUS ONE SHOULD NOT BE THERE?????
int nextInstruction()
{
    return quadArray.size() + 1;
}

Symbol* gentemp(SymbolType::typeEnum type,string s)
{
    Symbol* temp= new Symbol("t"+toString(temporaryCount++),type,s);
    Symbol* ret=currentTable->lookup(temp->name);
    return ret;
}
void changeTable(SymbolTable * table)
{
    currentTable=table;
}

bool typeCheck(Symbol * a, Symbol * b)
{     
    std::function<bool(SymbolType*,SymbolType*)> type_comp=[&](SymbolType * first, SymbolType * second)-> bool
    {
        if(!first and !second)
            return true;
        else if(!first or !second or first->type!=second->type)
            return false;
        else  
            return type_comp(first->arrayType,second->arrayType);    
    };
    if(type_comp(a->type,b->type))
        return true;
    else if (a=b->convert(b->type->type))
        return true;
    else if (b=a->convert(a->type->type))
        return true;
    else
        return false;
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
    yyparse();
    globalTable->print();
    return 0;
}

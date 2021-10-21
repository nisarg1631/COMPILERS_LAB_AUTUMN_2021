#include "ass5_19CS30031_19CS10070_translator.h"

// Global Variables
vector<Quad *> quadArray;
SymbolTable *currentTable, *globalTable, *parentTable;
Symbol *currentSymbol;
map<string, Label> labelTable;
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
    if ((this)->symbols.find(name) != (this)->symbols.end())
        return &(this)->symbols[name];
    Symbol *ret_ptr = nullptr;
    if (this->parent != NULL)
        ret_ptr = this->parent->lookup(name);

#warning check this portion
    if (!ret_ptr) // SHOULD I CHECK WHICH SYMBOL THIS IS ???????
    {
        auto sym = new Symbol(name); // constructor format??
        this->symbols[name] = *sym;
        return &(this)->symbols[name];
    }
    return ret_ptr;
}

// CHECK THIS PART
void SymbolTable::update()
{
    vector<SymbolTable *> visited;
    int offset;
    for (auto map_entry : (this)->symbols)
    {
        if (map_entry == *(this->symbols).begin())
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
    for(auto table : visited)
    {
        table->update();
    }
}

void SymbolTable::print()
{
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
}

// Implementation of label class
Label::Label(string name, int address) : name(name), address(address) {}

// Implementation of quad class
Quad::Quad(string result, string arg1, string op, string arg2) : result(result), op(op), arg1(arg1), arg2(arg2) {}
Quad::Quad(string result, int arg1, string op, string arg2) : result(result), op(op), arg1(toString(arg1)), arg2(arg2) {}
Quad::Quad(string result, float arg1, string op, string arg2) : result(result), op(op), arg1(toString(arg1)), arg2(arg2) {}
Quad::Quad(string result, char arg1, string op, string arg2) : result(result), op(op), arg1(toString(arg1)), arg2(arg2) {}

void Quad::print()
{
}

// Implementation of emit funtions
void emit(string op, string result, string arg1, string arg2) {

}
void emit(string op, string result, int arg1, string arg2) {

}


// Implementation of backpatching functions

// Implementation of other helper functions
int nextInstruction()
{
    return quadArray.size() + 1;
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

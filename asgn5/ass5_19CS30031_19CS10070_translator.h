#ifndef _TRANSLATOR_H
#define _TRANSLATOR_H

#include <string>
#include <map>
#include <list>

using namespace std;

// Symbol type class ( type safe representation for the type of a symbol )
class SymbolType {
    public:
        enum typeEnum {VOID, CHAR, INT, FLOAT, POINTER, FUNCTION, ARRAY} type;
        int width;
        SymbolType *arrayType;

        SymbolType(typeEnum, int = 0, SymbolType * = NULL);
        int getSize();
};

// Symbol table class
class SymbolTable {
    public:
        string name;
        int tempCount;                  // to maintain the number of temporaries inserted in this symbol table, helps in naming new temporaries
        map<string, Symbol> symbols;    // list of all symbols in this table, mapped by their names for fast access
        SymbolTable *parent;            // parent symbol table of this symbol table
        
        SymbolTable(string = "NULL", SymbolTable * = NULL);
        Symbol *lookup(string);
        void print();
        void update();
};

// Symbol class ( a single symbol in the symbol table )
class Symbol {
    public:
        string name;
        int size, offset;
        SymbolType *type;
        SymbolTable *nestedTable;
        string initialValue;

        Symbol(string, SymbolType::typeEnum, int = 0, SymbolType * = NULL);
        Symbol *update(SymbolType *);
};

#endif

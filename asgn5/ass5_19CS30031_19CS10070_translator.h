#ifndef _TRANSLATOR_H
#define _TRANSLATOR_H

#include <iostream>
#include <string>
#include <map>
#include <vector>
#include <list>
#include <functional>
#include <iomanip>
#include <string.h>
using namespace std;

class SymbolType;
class SymbolTable;
class Symbol;
class Label;
class Quad;
class Expression;
class Array;
class Statement;

// Symbol type class ( type safe representation for the type of a symbol )
class SymbolType {
    public:
        enum typeEnum {VOID, CHAR, INT, FLOAT, POINTER, FUNCTION, ARRAY, BLOCK} type;
        int width;
        SymbolType *arrayType;

        SymbolType(typeEnum, SymbolType * = NULL, int = 1);
        int getSize();
        string toString();
};

// Symbol table class
class SymbolTable {
    public:
        string name;
        map<string, Symbol> symbols;    // list of all symbols in this table, mapped by their names for fast access
        SymbolTable *parent;            // parent symbol table of this symbol table
        
        SymbolTable(string = "NULL", SymbolTable * = NULL);
        Symbol *lookup(string);
        void print();
        void update();
};

// Symbol class ( represents a single symbol in the symbol table )
class Symbol {
    public:
        string name;
        int size, offset;
        SymbolType *type;
        SymbolTable *nestedTable;
        string initialValue;
        bool isFunction; // flag to indicate if the symbol represents a function or not
                         // if it does represent a function the return type will be given by the type attribute

        Symbol(string, SymbolType::typeEnum = SymbolType::INT, string = "");
        Symbol *update(SymbolType *);
        Symbol *convert(SymbolType::typeEnum);
};

// Quad class ( represents a 3-address quad )
class Quad {
    public:
        string op, arg1, arg2, result;

        Quad(string, string, string = "=", string = "");
        Quad(string, int, string = "=", string = "");
        void print();
};

// Expression attributes
class Expression {
    public:
        Symbol *symbol;
        enum typeEnum {NONBOOLEAN, BOOLEAN} type;
        list<int> trueList, falseList, nextList;

        void toInt();
        void toBool();
};

// Array attributes
class Array {
    public:
        Symbol *temp;    // temporary used for computing the offset for the array reference
        enum typeEnum {OTHER, POINTER, ARRAY} type;    // Pointers, arrays and normal expressions are all stored using array attributes initially
        Symbol *symbol;  // pointer to the symbol table entry
        SymbolType *subArrayType;   // type of the sub-array generated by A
};

// Statement attributes
class Statement {
    public:
        list<int> nextList;     // List of quads having dangling exits for this statement
};

// Emit functions for generating quads
void emit(string, string, string = "", string = "");
void emit(string, string, int, string = "");

// Backpatching functions
void backpatch(list<int>, int);
list<int> makeList(int);
list<int> merge(list<int>, list<int>);

// Other helper functions

int nextInstruction(); 
Symbol *gentemp(SymbolType::typeEnum, string = "");
void changeTable(SymbolTable *);

// Type checking and conversions
bool typeCheck(Symbol *&, Symbol *&);

// Utility functions
string toString(int);
string toString(float);
string toString(char);

// Global variables
extern vector<Quad *> quadArray;
extern SymbolTable *currentTable, *globalTable;
extern Symbol *currentSymbol;
extern SymbolType::typeEnum currentType;
extern int tableCount, temporaryCount;

extern int yyparse();

#endif

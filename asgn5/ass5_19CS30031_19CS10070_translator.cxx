#include "ass5_19CS30031_19CS10070_translator.h"

#include <iostream>

// Implementation of symbol type class
SymbolType::SymbolType(typeEnum type, int width, SymbolType *arrayType = NULL) : 
    type(type), width(width), arrayType(arrayType) {}

int SymbolType::getSize() {
    if(type == VOID || type == FUNCTION)
        return 0;
    else if(type == CHAR)
        return 1;
    else if(type == INT || type == POINTER)
        return 4;
    else if(type == FLOAT)
        return 8;
    else if(type == ARRAY)
        return width * (arrayType->getSize());
}

// Implementation of symbol table class
SymbolTable::SymbolTable(string name, SymbolTable *parent) : 
    name(name), tempCount(0), parent(parent) {}

Symbol *SymbolTable::lookup(string name) {
    
}

void SymbolTable::update() {

}

void SymbolTable::print() {

}

// Implementation of symbol class
Symbol::Symbol(string name, SymbolType::typeEnum type, int width, SymbolType *arrayType) : 
    name(name), type(new SymbolType(type, width, arrayType)), offset(0), nestedTable(NULL), initialValue("-") {
        size = this->type->getSize();
    }

Symbol *Symbol::update(SymbolType *type) {
    this->type = type;
    size = this->type->getSize();
    return this;
}

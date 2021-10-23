%{
    #include "ass5_19CS30031_19CS10070_translator.h"
    extern int yylex();
    extern int lineCount;
    void yyerror(string);
    void yyinfo(string);
%}

%union {
    int intVal;
    char *floatVal;
    char *charVal;
    char *stringVal;
    char *identifierVal;
    char unaryOperator;
    int instructionNumber;
    int parameterCount;
    Expression *expression;
    Statement *statement;
    Array *array;
    SymbolType *symbolType;
    Symbol *symbol;
}

%token AUTO
%token BREAK
%token CASE
%token CHARTYPE
%token CONST
%token CONTINUE
%token DEFAULT
%token DO
%token DOUBLE
%token ELSE
%token ENUM
%token EXTERN
%token FLOATTYPE
%token FOR
%token GOTO
%token IF
%token INLINE
%token INTTYPE
%token LONG
%token REGISTER
%token RESTRICT
%token RETURN
%token SHORT
%token SIGNED
%token SIZEOF
%token STATIC
%token STRUCT
%token SWITCH
%token TYPEDEF
%token UNION
%token UNSIGNED
%token VOIDTYPE
%token VOLATILE
%token WHILE
%token _BOOL
%token _COMPLEX
%token _IMAGINARY

%token<symbol> IDENTIFIER
%token<intVal> INTEGER_CONSTANT
%token<floatVal> FLOATING_CONSTANT
%token<charVal> CHARACTER_CONSTANT
%token<stringVal> STRING_LITERAL

%token LEFT_SQUARE_BRACKET
%token INCREMENT
%token SLASH
%token QUESTION_MARK
%token ASSIGNMENT
%token COMMA
%token RIGHT_SQUARE_BRACKET
%token LEFT_PARENTHESES
%token LEFT_CURLY_BRACKET
%token RIGHT_CURLY_BRACKET
%token DOT
%token ARROW
%token ASTERISK
%token PLUS
%token MINUS
%token TILDE
%token EXCLAMATION
%token MODULO
%token LEFT_SHIFT
%token RIGHT_SHIFT
%token LESS_THAN
%token GREATER_THAN
%token LESS_EQUAL_THAN
%token GREATER_EQUAL_THAN
%token COLON
%token SEMI_COLON
%token ELLIPSIS
%token ASTERISK_ASSIGNMENT
%token SLASH_ASSIGNMENT
%token MODULO_ASSIGNMENT
%token PLUS_ASSIGNMENT
%token MINUS_ASSIGNMENT
%token LEFT_SHIFT_ASSIGNMENT
%token HASH
%token DECREMENT
%token RIGHT_PARENTHESES
%token BITWISE_AND
%token EQUALS
%token BITWISE_XOR
%token BITWISE_OR
%token LOGICAL_AND
%token LOGICAL_OR
%token RIGHT_SHIFT_ASSIGNMENT
%token NOT_EQUALS
%token BITWISE_AND_ASSIGNMENT
%token BITWISE_OR_ASSIGNMENT
%token BITWISE_XOR_ASSIGNMENT

%token INVALID_TOKEN

%start translation_unit
%right THEN ELSE

// Store unary operator as character
%type<unaryOperator> 
    unary_operator

// Store parameter count as integer
%type<parameterCount> 
    argument_expression_list 
    argument_expression_list_opt

// Expressions
%type<expression>
	expression
	primary_expression 
	multiplicative_expression
	additive_expression
	shift_expression
	relational_expression
	equality_expression
	AND_expression
	exclusive_OR_expression
	inclusive_OR_expression
	logical_AND_expression
	logical_OR_expression
	conditional_expression
	assignment_expression
	expression_statement
    expression_opt

// Arrays
%type<array> 
    postfix_expression
	unary_expression
	cast_expression

// Statements
%type <statement>  
    statement
	compound_statement
	selection_statement
	iteration_statement
	labeled_statement 
	jump_statement
	block_item
	block_item_list
	block_item_list_opt
    N

// symbol type
%type<symbolType> 
    pointer

// Symbol
%type<symbol> 
    initialiser
    direct_declarator 
    init_declarator 
    declarator

%type <instructionNumber> 
    M

%%

/* Expressions */

primary_expression: 
                    IDENTIFIER 
                        { 
                            yyinfo("primary_expression => IDENTIFIER");
                            $$ = new Expression();
                            $$->symbol = $1;
                            $$->type = Expression::NONBOOLEAN; 
                        }
                    | INTEGER_CONSTANT 
                        { 
                            yyinfo("primary_expression => INTEGER_CONSTANT"); 
                            $$ = new Expression();
                            $$->symbol = gentemp(SymbolType::INT, toString($1));
                            emit("=", $$->symbol->name, $1);
                        }
                    | FLOATING_CONSTANT 
                        { 
                            yyinfo("primary_expression => FLOATING_CONSTANT"); 
                            $$ = new Expression();
                            $$->symbol = gentemp(SymbolType::FLOAT, $1);
                            emit("=", $$->symbol->name, $1);
                        }
                    | CHARACTER_CONSTANT 
                        { 
                            yyinfo("primary_expression => CHARACTER_CONSTANT"); 
                            $$ = new Expression();
                            $$->symbol = gentemp(SymbolType::CHAR, $1);
                            emit("=", $$->symbol->name, $1);
                        }
                    | STRING_LITERAL 
                        { 
                            yyinfo("primary_expression => STRING_LITERAL"); 
                            $$ = new Expression();
		                    $$->symbol = gentemp(SymbolType::POINTER, $1);
		                    $$->symbol->type->arrayType = new SymbolType(SymbolType::CHAR);
                        }
                    | LEFT_PARENTHESES expression RIGHT_PARENTHESES
                        { 
                            yyinfo("primary_expression => ( expression )"); 
                            $$ = $2;
                        }
                    ;

postfix_expression:
                    primary_expression
                        { 
                            yyinfo("postfix_expression => primary_expression"); 
                            $$ = new Array();
                            $$->symbol = $1->symbol;
                            $$->temp = $$->symbol;
                            $$->subArrayType = $1->symbol->type;
                        }
                    | postfix_expression LEFT_SQUARE_BRACKET expression RIGHT_SQUARE_BRACKET
                        { 
                            yyinfo("postfix_expression => postfix_expression [ expression ]"); 
                            $$ = new Array();
                            $$->symbol = $1->symbol;
                            $$->subArrayType = $1->subArrayType->arrayType;
                            $$->temp = gentemp(SymbolType::INT);
                            $$->type = Array::ARRAY;

                            if($1->type == Array::ARRAY) {
                                Symbol *sym = gentemp(SymbolType::INT);
                                emit("*", sym->name, $3->symbol->name, toString($$->subArrayType->getSize()));
                                emit("+", $$->temp->name, $1->temp->name, sym->name);
                            } else {
                                emit("*", $$->temp->name, $3->symbol->name, toString($$->subArrayType->getSize()));
                            }

                        }
                    | postfix_expression LEFT_PARENTHESES argument_expression_list_opt RIGHT_PARENTHESES
                        { 
                            yyinfo("postfix_expression => postfix_expression ( argument_expression_list_opt )"); 
                            $$ = new Array();
                            $$->symbol = gentemp($1->symbol->type->type);
                            emit("call", $$->symbol->name, $1->symbol->name, toString($3));
                        }
                    | postfix_expression DOT IDENTIFIER
                        { 
                            yyinfo("postfix_expression => postfix_expression . IDENTIFIER"); 
                        }
                    | postfix_expression ARROW IDENTIFIER
                        { 
                            yyinfo("postfix_expression => postfix_expression -> IDENTIFIER"); 
                        }
                    | postfix_expression INCREMENT
                        { 
                            yyinfo("postfix_expression => postfix_expression ++");
                            $$ = new Array();
                            $$->symbol = gentemp($1->symbol->type->type);
                            emit("=", $$->symbol->name, $1->symbol->name);
                            emit("+", $1->symbol->name, $1->symbol->name, toString(1)); 
                        }
                    | postfix_expression DECREMENT
                        { 
                            yyinfo("postfix_expression => postfix_expression --"); 
                            $$ = new Array();
                            $$->symbol = gentemp($1->symbol->type->type);
                            emit("=", $$->symbol->name, $1->symbol->name);
                            emit("-", $1->symbol->name, $1->symbol->name, toString(1));
                        }
                    | LEFT_PARENTHESES type_name RIGHT_PARENTHESES LEFT_CURLY_BRACKET initialiser_list RIGHT_CURLY_BRACKET
                        { 
                            yyinfo("postfix_expression => ( type_name ) { initialiser_list }"); 
                        }
                    | LEFT_PARENTHESES type_name RIGHT_PARENTHESES LEFT_CURLY_BRACKET initialiser_list COMMA RIGHT_CURLY_BRACKET
                        { 
                            yyinfo("postfix_expression => ( type_name ) { initialiser_list , }"); 
                        }
                    ;



argument_expression_list_opt:
                                argument_expression_list
                                    { 
                                        yyinfo("argument_expression_list_opt => argument_expression_list"); 
                                        $$ = $1;
                                    }
                                | 
                                    { 
                                        yyinfo("argument_expression_list_opt => epsilon");
                                        $$ = 0;
                                    }
                                ;

argument_expression_list:
                            assignment_expression
                                { 
                                    yyinfo("argument_expression_list => assignment_expression"); 
                                    emit("param", $1->symbol->name);
                                    $$ = 1;
                                }
                            | argument_expression_list COMMA assignment_expression
                                { 
                                    yyinfo("argument_expression_list => argument_expression_list , assignment_expression");
                                    emit("param", $3->symbol->name);
                                    $$ = $1 + 1; 
                                }
                            ;

unary_expression:
                    postfix_expression
                        { 
                            yyinfo("unary_expression => postfix_expression"); 
                            $$ = $1;
                        }
                    | INCREMENT unary_expression
                        { 
                            yyinfo("unary_expression => ++ unary_expression"); 
                            $$ = $2;
                            emit("+", $2->symbol->name, $2->symbol->name, toString(1));
                        }
                    | DECREMENT unary_expression
                        { 
                            yyinfo("unary_expression => -- unary_expression"); 
                            $$ = $2;
                            emit("-", $2->symbol->name, $2->symbol->name, toString(1));
                        }
                    | unary_operator cast_expression
                        { 
                            yyinfo("unary_expression => unary_operator cast_expression");
                            if($1 == '&') {
                                $$ = new Array();
                                $$->symbol = gentemp(SymbolType::POINTER);
                                $$->symbol->type->arrayType = $2->symbol->type;
                                emit("=&", $$->symbol->name, $2->symbol->name);
                            } else if($1 == '*') {
                                $$ = new Array();
                                $$->symbol = $2->symbol;
                                $$->temp = gentemp($2->temp->type->arrayType->type);
                                $$->temp->type->arrayType = $2->temp->type->arrayType->arrayType;
                                $$->type = Array::POINTER;
                                emit("=*", $$->temp->name, $2->temp->name);
                            } else if($1 == '+') {
                                $$ = $2;
                            } else { // for -, ~ and !
                                $$ = new Array();
                                $$->symbol = gentemp($2->symbol->type->type);
                                emit(toString($1), $$->symbol->name, $2->symbol->name);
                            }
                        }
                    | SIZEOF unary_expression
                        { 
                            yyinfo("unary_expression => sizeof unary_expression"); 
                        }
                    | SIZEOF LEFT_PARENTHESES type_name RIGHT_PARENTHESES
                        { 
                            yyinfo("unary_expression => sizeof ( type_name )"); 
                        }
                    ;

unary_operator:
                BITWISE_AND
                    { 
                        yyinfo("unary_operator => &"); 
                        $$ = '&'; 
                    }
                | ASTERISK
                    { 
                        yyinfo("unary_operator => *"); 
                        $$ = '*'; 
                    }
                | PLUS
                    { 
                        yyinfo("unary_operator => +"); 
                        $$ = '+'; 
                    }
                | MINUS
                    { 
                        yyinfo("unary_operator => -"); 
                        $$ = '-'; 
                    }
                | TILDE
                    { 
                        yyinfo("unary_operator => ~"); 
                        $$ = '~'; 
                    }
                | EXCLAMATION
                    { 
                        yyinfo("unary_operator => !"); 
                        $$ = '!'; 
                    }
                ;

cast_expression:
                unary_expression
                    { 
                        yyinfo("cast_expression => unary_expression"); 
                        $$ = $1;
                    }
                | LEFT_PARENTHESES type_name RIGHT_PARENTHESES cast_expression
                    { 
                        yyinfo("cast_expression => ( type_name ) cast_expression"); 
                        $$ = new Array();
                        $$->symbol = $4->symbol->convert(currentType);
                    }
                ;

multiplicative_expression:
                            cast_expression
                                { 
                                    SymbolType *baseType = $1->symbol->type;
                                    while(baseType->arrayType)
                                        baseType = baseType->arrayType;
                                    yyinfo("multiplicative_expression => cast_expression"); 
                                    $$ = new Expression();
                                    if($1->type == Array::ARRAY) {
                                        $$->symbol = gentemp(baseType->type);
                                        emit("=[]", $$->symbol->name, $1->symbol->name, $1->temp->name);
                                    } else if($1->type == Array::POINTER) {
                                        $$->symbol = $1->temp;
                                    } else {
                                        $$->symbol = $1->symbol;
                                    }
                                }
                            | multiplicative_expression ASTERISK cast_expression
                                { 
                                    SymbolType *baseType = $3->symbol->type;
                                    while(baseType->arrayType)
                                        baseType = baseType->arrayType;
                                    Symbol *temp;
                                    if($3->type == Array::ARRAY) {
                                        temp = gentemp(baseType->type);
                                        emit("=[]", temp->name, $3->symbol->name, $3->temp->name);
                                    } else if($3->type == Array::POINTER) {
                                        temp = $3->temp;
                                    } else {
                                        temp = $3->symbol;
                                    }
                                    yyinfo("multiplicative_expression => multiplicative_expression * cast_expression"); 
                                    if(typeCheck($1->symbol, temp)) {
                                        $$ = new Expression();
                                        $$->symbol = gentemp($1->symbol->type->type);
                                        emit("*", $$->symbol->name, $1->symbol->name, temp->name);
                                    } else {
                                        yyerror("Type error.");
                                    }
                                }
                            | multiplicative_expression SLASH cast_expression
                                { 
                                    SymbolType *baseType = $3->symbol->type;
                                    while(baseType->arrayType)
                                        baseType = baseType->arrayType;
                                    Symbol *temp;
                                    if($3->type == Array::ARRAY) {
                                        temp = gentemp(baseType->type);
                                        emit("=[]", temp->name, $3->symbol->name, $3->temp->name);
                                    } else if($3->type == Array::POINTER) {
                                        temp = $3->temp;
                                    } else {
                                        temp = $3->symbol;
                                    }
                                    yyinfo("multiplicative_expression => multiplicative_expression / cast_expression");
                                    if(typeCheck($1->symbol, temp)) {
                                        $$ = new Expression();
                                        $$->symbol = gentemp($1->symbol->type->type);
                                        emit("/", $$->symbol->name, $1->symbol->name, temp->name);
                                    } else {
                                        yyerror("Type error.");
                                    }
                                }
                            | multiplicative_expression MODULO cast_expression
                                { 
                                    SymbolType *baseType = $3->symbol->type;
                                    while(baseType->arrayType)
                                        baseType = baseType->arrayType;
                                    Symbol *temp;
                                    if($3->type == Array::ARRAY) {
                                        temp = gentemp(baseType->type);
                                        emit("=[]", temp->name, $3->symbol->name, $3->temp->name);
                                    } else if($3->type == Array::POINTER) {
                                        temp = $3->temp;
                                    } else {
                                        temp = $3->symbol;
                                    }
                                    yyinfo("multiplicative_expression => multiplicative_expression % cast_expression"); 
                                    if(typeCheck($1->symbol, temp)) {
                                        $$ = new Expression();
                                        $$->symbol = gentemp($1->symbol->type->type);
                                        emit("%", $$->symbol->name, $1->symbol->name, temp->name);
                                    } else {
                                        yyerror("Type error.");
                                    }
                                }
                            ;

additive_expression:
                    multiplicative_expression
                        { 
                            yyinfo("additive_expression => multiplicative_expression"); 
                            $$ = $1;
                        }
                    | additive_expression PLUS multiplicative_expression
                        { 
                            yyinfo("additive_expression => additive_expression + multiplicative_expression"); 
                            if(typeCheck($1->symbol, $3->symbol)) {
                                $$ = new Expression();
                                $$->symbol = gentemp($1->symbol->type->type);
                                emit("+", $$->symbol->name, $1->symbol->name, $3->symbol->name);
                            } else {
                                yyerror("Type error.");
                            }
                        }
                    | additive_expression MINUS multiplicative_expression
                        { 
                            yyinfo("additive_expression => additive_expression - multiplicative_expression"); 
                            if(typeCheck($1->symbol, $3->symbol)) {
                                $$ = new Expression();
                                $$->symbol = gentemp($1->symbol->type->type);
                                emit("-", $$->symbol->name, $1->symbol->name, $3->symbol->name);
                            } else {
                                yyerror("Type error.");
                            }
                        }
                    ;

shift_expression:
                    additive_expression
                        { 
                            yyinfo("shift_expression => additive_expression");
                            $$ = $1;
                        }
                    | shift_expression LEFT_SHIFT additive_expression
                        { 
                            yyinfo("shift_expression => shift_expression << additive_expression"); 
                            if($3->symbol->type->type == SymbolType::INT) {
                                $$ = new Expression();
                                $$->symbol = gentemp(SymbolType::INT);
                                emit("<<", $$->symbol->name, $1->symbol->name, $3->symbol->name);
                            } else {
                                yyerror("Type error.");
                            }
                        }
                    | shift_expression RIGHT_SHIFT additive_expression
                        { 
                            yyinfo("shift_expression => shift_expression >> additive_expression"); 
                            if($3->symbol->type->type == SymbolType::INT) {
                                $$ = new Expression();
                                $$->symbol = gentemp(SymbolType::INT);
                                emit(">>", $$->symbol->name, $1->symbol->name, $3->symbol->name);
                            } else {
                                yyerror("Type error.");
                            }
                        }
                    ;

relational_expression:
                        shift_expression
                            { 
                                yyinfo("relational_expression => shift_expression"); 
                                $$ = $1;
                            }
                        | relational_expression LESS_THAN shift_expression
                            { 
                                yyinfo("relational_expression => relational_expression < shift_expression"); 
                                if(typeCheck($1->symbol, $3->symbol)) {
                                    $$ = new Expression();
                                    $$->type = Expression::BOOLEAN;
                                    $$->trueList = makeList(nextInstruction());
			                        $$->falseList = makeList(nextInstruction() + 1);
                                    emit("<", "", $1->symbol->name, $3->symbol->name);
                                    emit("goto", "");
                                } else {
                                    yyerror("Type error.");
                                }
                            }
                        | relational_expression GREATER_THAN shift_expression
                            { 
                                yyinfo("relational_expression => relational_expression > shift_expression"); 
                                if(typeCheck($1->symbol, $3->symbol)) {
                                    $$ = new Expression();
                                    $$->type = Expression::BOOLEAN;
                                    $$->trueList = makeList(nextInstruction());
			                        $$->falseList = makeList(nextInstruction() + 1);
                                    emit(">", "", $1->symbol->name, $3->symbol->name);
                                    emit("goto", "");
                                } else {
                                    yyerror("Type error.");
                                }
                            }
                        | relational_expression LESS_EQUAL_THAN shift_expression
                            { 
                                yyinfo("relational_expression => relational_expression <= shift_expression"); 
                                if(typeCheck($1->symbol, $3->symbol)) {
                                    $$ = new Expression();
                                    $$->type = Expression::BOOLEAN;
                                    $$->trueList = makeList(nextInstruction());
			                        $$->falseList = makeList(nextInstruction() + 1);
                                    emit("<=", "", $1->symbol->name, $3->symbol->name);
                                    emit("goto", "");
                                } else {
                                    yyerror("Type error.");
                                }
                            }
                        | relational_expression GREATER_EQUAL_THAN shift_expression
                            { 
                                yyinfo("relational_expression => relational_expression >= shift_expression"); 
                                if(typeCheck($1->symbol, $3->symbol)) {
                                    $$ = new Expression();
                                    $$->type = Expression::BOOLEAN;
                                    $$->trueList = makeList(nextInstruction());
			                        $$->falseList = makeList(nextInstruction() + 1);
                                    emit(">=", "", $1->symbol->name, $3->symbol->name);
                                    emit("goto", "");
                                } else {
                                    yyerror("Type error.");
                                }
                            }
                        ;

equality_expression:
                    relational_expression
                        { 
                            yyinfo("equality_expression => relational_expression"); 
                            $$ = $1;
                        }
                    | equality_expression EQUALS relational_expression
                        { 
                            yyinfo("equality_expression => equality_expression == relational_expression"); 
                            if(typeCheck($1->symbol, $3->symbol)) {
                                $1->toInt();
                                $3->toInt();
                                $$ = new Expression();
                                $$->type = Expression::BOOLEAN;
                                $$->trueList = makeList(nextInstruction());
			                    $$->falseList = makeList(nextInstruction() + 1);
                                emit("==", "", $1->symbol->name, $3->symbol->name);
                                emit("goto", "");
                            } else {
                                yyerror("Type error.");
                            }
                        }
                    | equality_expression NOT_EQUALS relational_expression
                        { 
                            yyinfo("equality_expression => equality_expression != relational_expression"); 
                            if(typeCheck($1->symbol, $3->symbol)) {
                                $1->toInt();
                                $3->toInt();
                                $$ = new Expression();
                                $$->type = Expression::BOOLEAN;
                                $$->trueList = makeList(nextInstruction());
			                    $$->falseList = makeList(nextInstruction() + 1);
                                emit("!=", "", $1->symbol->name, $3->symbol->name);
                                emit("goto", "");
                            } else {
                                yyerror("Type error.");
                            }
                        }
                    ;

AND_expression:
                equality_expression
                    { 
                        yyinfo("AND_expression => equality_expression"); 
                        $$ = $1;
                    }
                | AND_expression BITWISE_AND equality_expression
                    { 
                        yyinfo("AND_expression => AND_expression & equality_expression"); 
                        $1->toInt();
                        $3->toInt();
                        $$ = new Expression();
                        $$->type = Expression::NONBOOLEAN;
                        $$->symbol = gentemp(SymbolType::INT);
                        emit("&", $$->symbol->name, $1->symbol->name, $3->symbol->name);
                    }
                ;

exclusive_OR_expression:
                        AND_expression
                            { 
                                yyinfo("exclusive_OR_expression => AND_expression"); 
                                $$ = $1;
                            }
                        | exclusive_OR_expression BITWISE_XOR AND_expression
                            { 
                                yyinfo("exclusive_OR_expression => exclusive_OR_expression ^ AND_expression"); 
                                $1->toInt();
                                $3->toInt();
                                $$ = new Expression();
                                $$->type = Expression::NONBOOLEAN;
                                $$->symbol = gentemp(SymbolType::INT);
                                emit("^", $$->symbol->name, $1->symbol->name, $3->symbol->name);
                            }
                        ;

inclusive_OR_expression:
                        exclusive_OR_expression
                            { 
                                yyinfo("inclusive_OR_expression => exclusive_OR_expression"); 
                                $$ = $1;
                            }
                        | inclusive_OR_expression BITWISE_OR exclusive_OR_expression
                            { 
                                yyinfo("inclusive_OR_expression => inclusive_OR_expression | exclusive_OR_expression"); 
                                $1->toInt();
                                $3->toInt();
                                $$ = new Expression();
                                $$->type = Expression::NONBOOLEAN;
                                $$->symbol = gentemp(SymbolType::INT);
                                emit("|", $$->symbol->name, $1->symbol->name, $3->symbol->name);
                            }
                        ;

M:  
        {
            yyinfo("M => epsilon");
            $$ = nextInstruction();
        }   
    ;

N: 
        {
            yyinfo("N => epsilon");
            $$ = new Statement();
            $$->nextList = makeList(nextInstruction());
            emit("goto", "");
        }
	;

logical_AND_expression:
                        inclusive_OR_expression
                            { 
                                yyinfo("logical_AND_expression => inclusive_OR_expression"); 
                                $$ = $1;
                            }
                        | logical_AND_expression LOGICAL_AND M inclusive_OR_expression
                            { 
                                yyinfo("logical_AND_expression => logical_AND_expression && inclusive_OR_expression");
                                $1->toBool();
                                $4->toBool();
                                $$ = new Expression();
                                $$->type = Expression::BOOLEAN;
                                backpatch($1->trueList, $3);
                                $$->trueList = $4->trueList;
                                $$->falseList = merge($1->falseList, $4->falseList);
                            }
                        ;

logical_OR_expression:
                        logical_AND_expression
                            { 
                                yyinfo("logical_OR_expression => logical_AND_expression"); 
                                $$ = $1;
                            }
                        | logical_OR_expression LOGICAL_OR M logical_AND_expression
                            { 
                                yyinfo("logical_OR_expression => logical_OR_expression || logical_AND_expression"); 
                                $1->toBool();
                                $4->toBool();
                                $$ = new Expression();
                                $$->type = Expression::BOOLEAN;
                                backpatch($1->falseList, $3);
                                $$->trueList = merge($1->trueList, $4->trueList);
                                $$->falseList = $4->falseList;
                            }
                        ;

conditional_expression:
                        logical_OR_expression
                            { 
                                yyinfo("conditional_expression => logical_OR_expression"); 
                                $$ = $1;
                            }
                        | logical_OR_expression N QUESTION_MARK M expression N COLON M conditional_expression
                            { 
                                yyinfo("conditional_expression => logical_OR_expression ? expression : conditional_expression"); 
                                $$->symbol = gentemp($5->symbol->type->type);
                                emit("=", $$->symbol->name, $9->symbol->name);
                                list<int> l = makeList(nextInstruction());
                                emit("goto", "");
                                backpatch($6->nextList, nextInstruction());
                                emit("=", $$->symbol->name, $5->symbol->name);
                                l = merge(l, makeList(nextInstruction()));
                                emit("goto", "");
                                backpatch($2->nextList, nextInstruction());
                                $1->toBool();
                                backpatch($1->trueList, $4);
                                backpatch($1->falseList, $8);
                                backpatch(l, nextInstruction());
                            }
                        ;

assignment_expression:
                        conditional_expression
                            { 
                                yyinfo("assignment_expression => conditional_expression"); 
                                $$ = $1;
                            }
                        | unary_expression assignment_operator assignment_expression
                            { 
                                yyinfo("assignment_expression => unary_expression assignment_operator assignment_expression"); 
                                if($1->type == Array::ARRAY) {
                                    $3->symbol = $3->symbol->convert($1->subArrayType->type);
                                    emit("[]=", $1->symbol->name, $1->temp->name, $3->symbol->name);
                                } else if($1->type == Array::POINTER) {
                                    emit("*=", $1->symbol->name, $3->symbol->name);
                                } else {
                                    $3->symbol = $3->symbol->convert($1->symbol->type->type);
			                        emit("=", $1->symbol->name, $3->symbol->name);
                                }
                                $$ = $3;
                            }
                        ;

assignment_operator:
                    ASSIGNMENT
                        { 
                            yyinfo("assignment_operator => ="); 
                        }
                    | ASTERISK_ASSIGNMENT
                        { 
                            yyinfo("assignment_operator => *="); 
                        }
                    | SLASH_ASSIGNMENT
                        { 
                            yyinfo("assignment_operator => /="); 
                        }
                    | MODULO_ASSIGNMENT
                        { 
                            yyinfo("assignment_operator => %="); 
                        }
                    | PLUS_ASSIGNMENT
                        { 
                            yyinfo("assignment_operator => += "); 
                        }
                    | MINUS_ASSIGNMENT
                        { 
                            yyinfo("assignment_operator => -= "); 
                        }
                    | LEFT_SHIFT_ASSIGNMENT
                        { 
                            yyinfo("assignment_operator => <<="); 
                        }
                    | RIGHT_SHIFT_ASSIGNMENT
                        { 
                            yyinfo("assignment_operator => >>="); 
                        }
                    | BITWISE_AND_ASSIGNMENT
                        { 
                            yyinfo("assignment_operator => &="); 
                        }
                    | BITWISE_XOR_ASSIGNMENT
                        { 
                            yyinfo("assignment_operator => ^="); 
                        }
                    | BITWISE_OR_ASSIGNMENT
                        { 
                            yyinfo("assignment_operator => |="); 
                        }
                    ;

expression:
            assignment_expression
                { 
                    yyinfo("expression => assignment_expression"); 
                    $$ = $1;
                }
            | expression COMMA assignment_expression
                {
                     yyinfo("expression => expression , assignment_expression"); 
                }
            ;

constant_expression:
                    conditional_expression
                        {
                             yyinfo("constant_expression => conditional_expression"); 
                        }
                    ;

/* Declarations */

declaration:
            declaration_specifiers init_declarator_list_opt SEMI_COLON
                {
                     yyinfo("declaration => declaration_specifiers init_declarator_list_opt ;"); 
                }
            ;

init_declarator_list_opt:
                            init_declarator_list
                                {
                                     yyinfo("init_declarator_list_opt => init_declarator_list"); 
                                }
                            |
                                {
                                     yyinfo("init_declarator_list_opt => epsilon"); 
                                }
                            ;

declaration_specifiers:
                        storage_class_specifier declaration_specifiers_opt
                            {
                                 yyinfo("declaration_specifiers => storage_class_specifier declaration_specifiers_opt"); 
                            }
                        | type_specifier declaration_specifiers_opt
                            {
                                 yyinfo("declaration_specifiers => type_specifier declaration_specifiers_opt"); 
                            }
                        | type_qualifier declaration_specifiers_opt
                            {
                                 yyinfo("declaration_specifiers => type_qualifier declaration_specifiers_opt"); 
                            }
                        | function_specifier declaration_specifiers_opt
                            {
                                 yyinfo("declaration_specifiers => function_specifier declaration_specifiers_opt"); 
                            }
                        ;

declaration_specifiers_opt:
                            declaration_specifiers
                                {
                                     yyinfo("declaration_specifiers_opt => declaration_specifiers"); 
                                }
                            |
                                {
                                     yyinfo("declaration_specifiers_opt => epsilon "); 
                                }
                            ;

init_declarator_list:
                        init_declarator
                            {
                                 yyinfo("init_declarator_list => init_declarator"); 
                            }
                        | init_declarator_list COMMA init_declarator
                            {
                                 yyinfo("init_declarator_list => init_declarator_list , init_declarator"); 
                            }
                        ;

init_declarator:
                declarator
                    { 
                        yyinfo("init_declarator => declarator"); 
                        $$ = $1;
                    }
                | declarator ASSIGNMENT initialiser
                    { 
                        yyinfo("init_declarator => declarator = initialiser"); 
                        if($3->initialValue != "") 
                            $1->initialValue = $3->initialValue;
		                emit("=", $1->name, $3->name);
                    }
                ;

storage_class_specifier:
                        EXTERN
                            {
                                 yyinfo("storage_class_specifier => extern"); 
                            }
                        | STATIC
                            {
                                 yyinfo("storage_class_specifier => static"); 
                            }
                        | AUTO
                            {
                                 yyinfo("storage_class_specifier => auto"); 
                            }
                        | REGISTER
                            {
                                 yyinfo("storage_class_specifier => register"); 
                            }
                        ;

type_specifier:
                VOIDTYPE
                    { 
                        yyinfo("type_specifier => void");
                        currentType = SymbolType::VOID;
                    }
                | CHARTYPE
                    { 
                        yyinfo("type_specifier => char"); 
                        currentType = SymbolType::CHAR;
                    }
                | SHORT
                    {
                         yyinfo("type_specifier => short"); 
                    }
                | INTTYPE
                    { 
                        yyinfo("type_specifier => int"); 
                        currentType = SymbolType::INT;
                    }
                | LONG
                    {
                         yyinfo("type_specifier => long"); 
                    }
                | FLOATTYPE
                    { 
                        yyinfo("type_specifier => float"); 
                        currentType = SymbolType::FLOAT;
                    }
                | DOUBLE
                    {
                         yyinfo("type_specifier => double"); 
                    }
                | SIGNED
                    {
                         yyinfo("type_specifier => signed"); 
                    }
                | UNSIGNED
                    {
                         yyinfo("type_specifier => unsigned"); 
                    }
                | _BOOL
                    {
                         yyinfo("type_specifier => _Bool"); 
                    }
                | _COMPLEX
                    {
                         yyinfo("type_specifier => _Complex"); 
                    }
                | _IMAGINARY
                    {
                         yyinfo("type_specifier => _Imaginary"); 
                    }
                | enum_specifier 
                    {
                         yyinfo("type_specifier => enum_specifier"); 
                    }
                ;

specifier_qualifier_list:
                            type_specifier specifier_qualifier_list_opt
                                { 
                                    yyinfo("specifier_qualifier_list => type_specifier specifier_qualifier_list_opt"); 
                                }
                            | type_qualifier specifier_qualifier_list_opt
                                { 
                                    yyinfo("specifier_qualifier_list => type_qualifier specifier_qualifier_list_opt"); 
                                }
                            ;

specifier_qualifier_list_opt:
                                specifier_qualifier_list
                                    { 
                                        yyinfo("specifier_qualifier_list_opt => specifier_qualifier_list"); 
                                    }
                                | 
                                    { 
                                        yyinfo("specifier_qualifier_list_opt => epsilon"); 
                                    }
                                ;

enum_specifier:
                ENUM identifier_opt LEFT_CURLY_BRACKET enumerator_list RIGHT_CURLY_BRACKET 
                    { 
                        yyinfo("enum_specifier => enum identifier_opt { enumerator_list }"); 
                    }
                | ENUM identifier_opt LEFT_CURLY_BRACKET enumerator_list COMMA RIGHT_CURLY_BRACKET
                    { 
                        yyinfo("enum_specifier => enum identifier_opt { enumerator_list , }"); 
                    }
                | ENUM IDENTIFIER
                    { 
                        yyinfo("enum_specifier => enum IDENTIFIER"); 
                    }
                ;

identifier_opt:
                IDENTIFIER 
                    { 
                        yyinfo("identifier_opt => IDENTIFIER"); 
                    }
                | 
                    { 
                        yyinfo("identifier_opt => epsilon"); 
                    }
                ;

enumerator_list:
                enumerator 
                    { 
                        yyinfo("enumerator_list => enumerator"); 
                    }
                | enumerator_list COMMA enumerator
                    { 
                        yyinfo("enumerator_list => enumerator_list , enumerator"); 
                    }
                ;

enumerator:
            IDENTIFIER 
                { 
                    yyinfo("enumerator => ENUMERATION_CONSTANT"); 
                }
            | IDENTIFIER ASSIGNMENT constant_expression
                { 
                    yyinfo("enumerator => ENUMERATION_CONSTANT = constant_expression"); 
                }
            ;

type_qualifier:
                CONST
                    { 
                        yyinfo("type_qualifier => const"); 
                    }
                | RESTRICT
                    { 
                        yyinfo("type_qualifier => restrict"); 
                    }
                | VOLATILE
                    { 
                        yyinfo("type_qualifier => volatile"); 
                    }
                ;

function_specifier:
                    INLINE
                        { 
                            yyinfo("function_specifier => inline"); 
                        }
                    ;

declarator:
            pointer direct_declarator
                { 
                    yyinfo("declarator => pointer direct_declarator"); 
                    SymbolType *it = $1;
                    while(it->arrayType != NULL) 
                        it = it->arrayType;
                    it->arrayType = $2->type;
                    $$ = $2->update($1);
                }
            | direct_declarator
                { 
                    yyinfo("declarator => direct_declarator"); 
                }
            ;

change_scope:
                    {
                        if(currentSymbol->nestedTable == NULL) {
                            changeTable(new SymbolTable(""));
                        }
                        else {
                            changeTable(currentSymbol->nestedTable);
                            emit("label", currentTable->name);
                        }
                    }
	            ;

direct_declarator:
                    IDENTIFIER 
                        { 
                            yyinfo("direct_declarator => IDENTIFIER"); 
                            $$ = $1->update(new SymbolType(currentType));
                            currentSymbol = $$;
                        }
                    | LEFT_PARENTHESES declarator RIGHT_PARENTHESES
                        { 
                            yyinfo("direct_declarator => ( declarator )"); 
                            $$ = $2;
                        }
                    | direct_declarator LEFT_SQUARE_BRACKET type_qualifier_list assignment_expression RIGHT_SQUARE_BRACKET
                        { 
                            yyinfo("direct_declarator => direct_declarator [ type_qualifier_list assignment_expression ]"); 
                        }
                    | direct_declarator LEFT_SQUARE_BRACKET type_qualifier_list RIGHT_SQUARE_BRACKET
                        { 
                            yyinfo("direct_declarator => direct_declarator [ type_qualifier_list ]"); 
                        }
                    | direct_declarator LEFT_SQUARE_BRACKET assignment_expression RIGHT_SQUARE_BRACKET
                        { 
                            yyinfo("direct_declarator => direct_declarator [ assignment_expression ]"); 
                            SymbolType *it1 = $1->type, *it2 = NULL;
                            while(it1->type == SymbolType::ARRAY) { // go to the base level of a nested type
                                it2 = it1;
                                it1 = it1->arrayType;
                            }
                            if(it2 != NULL) { // nested array case
                                // another level of nesting with base as it1 and width the value of assignment_expression
                                it2->arrayType =  new SymbolType(SymbolType::ARRAY, it1, atoi($3->symbol->initialValue.c_str()));	
                                $$ = $1->update($1->type);
                            }
                            else { // fresh array
                                // create a new array with base as type of direct_declarator and width the value of assignment_expression
                                $$ = $1->update(new SymbolType(SymbolType::ARRAY, $1->type, atoi($3->symbol->initialValue.c_str())));
                            }
                        }
                    | direct_declarator LEFT_SQUARE_BRACKET RIGHT_SQUARE_BRACKET
                        { 
                            yyinfo("direct_declarator => direct_declarator [ ]"); 
                            // same as the previous rule, just we dont know the size so put it as 0
                            SymbolType *it1 = $1->type, *it2 = NULL;
                            while(it1->type == SymbolType::ARRAY) { // go to the base level of a nested type
                                it2 = it1;
                                it1 = it1->arrayType;
                            }
                            if(it2 != NULL) { // nested array case
                                // another level of nesting with base as it1 and width the value of assignment_expression
                                it2->arrayType =  new SymbolType(SymbolType::ARRAY, it1, 0);	
                                $$ = $1->update($1->type);
                            }
                            else { // fresh array
                                // create a new array with base as type of direct_declarator and width the value of assignment_expression
                                $$ = $1->update(new SymbolType(SymbolType::ARRAY, $1->type, 0));
                            }
                        }
                    | direct_declarator LEFT_SQUARE_BRACKET STATIC type_qualifier_list assignment_expression RIGHT_SQUARE_BRACKET
                        { 
                            yyinfo("direct_declarator => direct_declarator [ static type_qualifier_list assignment_expression ]"); 
                        }
                    | direct_declarator LEFT_SQUARE_BRACKET STATIC assignment_expression RIGHT_SQUARE_BRACKET
                        { 
                            yyinfo("direct_declarator => direct_declarator [ assignment_expression ]"); 
                        }
                    | direct_declarator LEFT_SQUARE_BRACKET type_qualifier_list STATIC assignment_expression RIGHT_SQUARE_BRACKET
                        { 
                            yyinfo("direct_declarator => direct_declarator [ type_qualifier_list static assignment_expression ]"); 
                        }
                    | direct_declarator LEFT_SQUARE_BRACKET type_qualifier_list ASTERISK RIGHT_SQUARE_BRACKET
                        { 
                            yyinfo("direct_declarator => direct_declarator [ type_qualifier_list * ]"); 
                        }
                    | direct_declarator LEFT_SQUARE_BRACKET ASTERISK RIGHT_SQUARE_BRACKET
                        { 
                            yyinfo("direct_declarator => direct_declarator [ * ]"); 
                        }
                    | direct_declarator LEFT_PARENTHESES change_scope parameter_type_list RIGHT_PARENTHESES
                        { 
                            yyinfo("direct_declarator => direct_declarator ( parameter_type_list )"); 
                            // function declaration
                            currentTable->name = $1->name;
                            if($1->type->type != SymbolType::VOID) {
                                // set type of return value
                                currentTable->lookup("return")->update($1->type);
                            }
                            $1->nestedTable = currentTable;
                            currentTable->parent = globalTable;
                            changeTable(globalTable);
                            currentSymbol = $$;
                        }
                    | direct_declarator LEFT_PARENTHESES identifier_list RIGHT_PARENTHESES
                        { 
                            yyinfo("direct_declarator => direct_declarator ( identifier_list )"); 
                        }
                    | direct_declarator LEFT_PARENTHESES change_scope RIGHT_PARENTHESES
                        { 
                            yyinfo("direct_declarator => direct_declarator ( )"); 
                            // same as the previous rule
                            currentTable->name = $1->name;
                            if($1->type->type != SymbolType::VOID) {
                                // set type of return value
                                currentTable->lookup("return")->update($1->type);
                            }
                            $1->nestedTable = currentTable;
                            currentTable->parent = globalTable;
                            changeTable(globalTable);
                            currentSymbol = $$;
                        }
                    ;

type_qualifier_list_opt:
                        type_qualifier_list
                            { 
                                yyinfo("type_qualifier_list_opt => type_qualifier_list"); 
                            }
                        |
                            { 
                                yyinfo("type_qualifier_list_opt => epsilon"); 
                            }
                        ;

/* assignment_expression_opt:
                            assignment_expression
                                { 
                                    yyinfo("assignment_expression_opt => assignment_expression"); 
                                }
                            |
                                { 
                                    yyinfo("assignment_expression_opt => epsilon"); 
                                }
                            ; */

/* identifier_list_opt:
                    identifier_list
                        { 
                            yyinfo("identifier_list_opt => identifier_list"); 
                        }
                    |
                        { 
                            yyinfo("identifier_list_opt => epsilon"); 
                        }
                    ; */

pointer:
        ASTERISK type_qualifier_list_opt
            { 
                yyinfo("pointer => * type_qualifier_list_opt"); 
                // fresh pointer
                $$ = new SymbolType(SymbolType::POINTER);
            }
        | ASTERISK type_qualifier_list_opt pointer
            { 
                yyinfo("pointer => * type_qualifier_list_opt pointer"); 
                // nested pointer
                $$ = new SymbolType(SymbolType::POINTER, $3);
            }
        ;

type_qualifier_list:
                    type_qualifier
                        { 
                            yyinfo("type_qualifier_list => type_qualifier"); 
                        }
                    | type_qualifier_list type_qualifier
                        { 
                            yyinfo("type_qualifier_list => type_qualifier_list type_qualifier"); 
                        }
                    ;

parameter_type_list:
                    parameter_list
                        { 
                            yyinfo("parameter_type_list => parameter_list"); 
                        }
                    | parameter_list COMMA ELLIPSIS
                        { 
                            yyinfo("parameter_type_list => parameter_list , ..."); 
                        }
                    ;

parameter_list:
                parameter_declaration
                    { 
                        yyinfo("parameter_list => parameter_declaration"); 
                    }
                | parameter_list COMMA parameter_declaration
                    { 
                        yyinfo("parameter_list => parameter_list , parameter_declaration"); 
                    }
                ;

parameter_declaration:
                        declaration_specifiers declarator
                            { 
                                yyinfo("parameter_declaration => declaration_specifiers declarator"); 
                            }
                        | declaration_specifiers
                            { 
                                yyinfo("parameter_declaration => declaration_specifiers"); 
                            }
                        ;

identifier_list:
                IDENTIFIER 
                    { 
                        yyinfo("identifier_list => IDENTIFIER"); 
                    }
                | identifier_list COMMA IDENTIFIER
                    { 
                        yyinfo("identifier_list => identifier_list , IDENTIFIER"); 
                    }
                ;

type_name:
            specifier_qualifier_list
                { 
                    yyinfo("type_name => specifier_qualifier_list"); 
                }
            ;

initialiser:
            assignment_expression
                { 
                    yyinfo("initialiser => assignment_expression"); 
                    $$ = $1->symbol;
                }
            | LEFT_CURLY_BRACKET initialiser_list RIGHT_CURLY_BRACKET
                { 
                    yyinfo("initialiser => { initialiser_list }"); 
                }  
            | LEFT_CURLY_BRACKET initialiser_list COMMA RIGHT_CURLY_BRACKET
                { 
                    yyinfo("initialiser => { initialiser_list , }"); 
                }
            ;

initialiser_list:
                    designation_opt initialiser
                        { 
                            yyinfo("initialiser_list => designation_opt initialiser"); 
                        }
                    | initialiser_list COMMA designation_opt initialiser
                        { 
                            yyinfo("initialiser_list => initialiser_list , designation_opt initialiser"); 
                        }
                    ;

designation_opt:
                designation
                    { 
                        yyinfo("designation_opt => designation"); 
                    }
                |
                    { 
                        yyinfo("designation_opt => epsilon"); 
                    }
                ;

designation:
            designator_list ASSIGNMENT
                { 
                    yyinfo("designation => designator_list ="); 
                }
            ;

designator_list:
                designator
                    { 
                        yyinfo("designator_list => designator"); 
                    }
                | designator_list designator
                    { 
                        yyinfo("designator_list => designator_list designator"); 
                    }
                ;

designator:
            LEFT_SQUARE_BRACKET constant_expression RIGHT_SQUARE_BRACKET
                { 
                    yyinfo("designator => [ constant_expression ]"); 
                }
            | DOT IDENTIFIER
                { 
                    yyinfo("designator => . IDENTIFIER"); 
                }   
            ;

/* Statements */

statement:
            labeled_statement
                { 
                    yyinfo("statement => labeled_statement"); 
                }
            | compound_statement
                { 
                    yyinfo("statement => compound_statement");
                    $$ = $1; 
                }
            | expression_statement
                { 
                    yyinfo("statement => expression_statement"); 
                    $$ = new Statement();
                    $$->nextList = $1->nextList;
                }
            | selection_statement
                { 
                    yyinfo("statement => selection_statement"); 
                    $$ = $1;
                }
            | iteration_statement
                { 
                    yyinfo("statement => iteration_statement"); 
                    $$ = $1;
                }
            | jump_statement
                { 
                    yyinfo("statement => jump_statement"); 
                    $$ = $1;
                }
            ;

labeled_statement:
                    IDENTIFIER COLON statement
                        { 
                            yyinfo("labeled_statement => IDENTIFIER : statement"); 
                        }
                    | CASE constant_expression COLON statement
                        { 
                            yyinfo("labeled_statement => case constant_expression : statement"); 
                        }    
                    | DEFAULT COLON statement
                        { 
                            yyinfo("labeled_statement => default : statement"); 
                        }
                    ;

change_block: 
                    {
                        string name = currentTable->name + "_" + toString(tableCount);
                        tableCount++;
                        Symbol *s = currentTable->lookup(name); // create new entry in symbol table
                        s->nestedTable = new SymbolTable(name, currentTable);
                        s->type = new SymbolType(SymbolType::BLOCK);
                        currentSymbol = s;
                    } 
                ;

compound_statement:
                    LEFT_CURLY_BRACKET change_block change_scope block_item_list_opt RIGHT_CURLY_BRACKET
                        { 
                            yyinfo("compound_statement => { block_item_list_opt }"); 
                            $$ = $4;
                            changeTable(currentTable->parent);
                        }
                    ;

block_item_list_opt:
                    block_item_list
                        { 
                            yyinfo("block_item_list_opt => block_item_list"); 
                            $$ = $1;
                        }
                    |
                        { 
                            yyinfo("block_item_list_opt => epsilon"); 
                            $$ = new Statement();
                        }
                    ;

block_item_list:
                block_item
                    {
                        yyinfo("block_item_list => block_item"); 
                        $$ = $1;
                    }
                | block_item_list M block_item
                    { 
                        yyinfo("block_item_list => block_item_list block_item"); 
                        $$ = $3;
                        // after completion of block_item_list(1) we move to block_item(3)
                        backpatch($1->nextList,$2);
                    }
                ;

block_item:
            declaration
                { 
                    yyinfo("block_item => declaration"); 
                    $$ = new Statement();
                }
            | statement
                { 
                    yyinfo("block_item => statement"); 
                    $$ = $1;
                }
            ;

expression_statement:
                        expression_opt SEMI_COLON
                            { 
                                yyinfo("expression_statement => expression_opt ;"); 
                                $$ = $1;
                            }
                        ;

expression_opt:
                expression
                    { 
                        yyinfo("expression_opt => expression"); 
                        $$ = $1;
                    }
                |
                    { 
                        yyinfo("expression_opt => epsilon"); 
                        $$ = new Expression();
                    }
                ;

selection_statement:
                    IF LEFT_PARENTHESES expression RIGHT_PARENTHESES M statement N %prec THEN
                        { 
                            yyinfo("selection_statement => if ( expression ) statement"); 
                            $$ = new Statement();
                            $3->toBool();
                            backpatch($3->trueList, $5);
                            $$->nextList = merge($3->falseList, merge($6->nextList, $7->nextList));
                        }
                    | IF LEFT_PARENTHESES expression RIGHT_PARENTHESES M statement N ELSE M statement
                        { 
                            yyinfo("selection_statement => if ( expression ) statement else statement"); 
                            $$ = new Statement();
                            $3->toBool();
                            backpatch($3->trueList, $5);
                            backpatch($3->falseList, $9);
                            $$->nextList = merge($10->nextList, merge($6->nextList, $7->nextList));
                        }
                    | SWITCH LEFT_PARENTHESES expression RIGHT_PARENTHESES statement
                        { 
                            yyinfo("selection_statement => switch ( expression ) statement"); 
                        }
                    ;

iteration_statement:
                    WHILE M LEFT_PARENTHESES expression RIGHT_PARENTHESES M statement
                        { 
                            yyinfo("iteration_statement => while ( expression ) statement"); 
                            $$ = new Statement();
                            $4->toBool();
                            backpatch($7->nextList, $2);
                            backpatch($4->trueList, $6);
                            $$->nextList = $4->falseList;
                            emit("goto", toString($2));
                        }
                    | DO M statement M WHILE LEFT_PARENTHESES expression RIGHT_PARENTHESES SEMI_COLON
                        { 
                            yyinfo("iteration_statement => do statement while ( expression ) ;"); 
                            $$ = new Statement();
                            $7->toBool();
                            backpatch($7->trueList, $2);
                            backpatch($3->nextList, $4);
                            $$->nextList = $7->falseList;
                        }
                    | FOR LEFT_PARENTHESES expression_opt SEMI_COLON M expression_opt SEMI_COLON M expression_opt N RIGHT_PARENTHESES M statement
                        { 
                            yyinfo("iteration_statement => for ( expression_opt ; expression_opt ; expression_opt ) statement"); 
                            $$ = new Statement();
                            $6->toBool();
                            backpatch($6->trueList, $12);
                            backpatch($10->nextList, $5);
                            backpatch($13->nextList, $8);
                            emit("goto", toString($8));
                            $$->nextList = $6->falseList;
                        }
                    | FOR LEFT_PARENTHESES declaration expression_opt SEMI_COLON expression_opt RIGHT_PARENTHESES statement
                        { 
                            yyinfo("iteration_statement => for ( declaration expression_opt ; expression_opt ) statement"); 
                        }
                    ;

jump_statement:
                GOTO IDENTIFIER SEMI_COLON
                    { 
                        yyinfo("jump_statement => goto IDENTIFIER ;"); 
                    }    
                | CONTINUE SEMI_COLON
                    { 
                        yyinfo("jump_statement => continue ;"); 
                    }
                | BREAK SEMI_COLON
                    { 
                        yyinfo("jump_statement => break ;"); 
                    }
                | RETURN expression_opt SEMI_COLON
                    { 
                        yyinfo("jump_statement => return expression_opt ;"); 
                        $$ = new Statement();
                        if($2->symbol != NULL) {
                            emit("return", $2->symbol->name);
                        } else {
                            emit("return", "");
                        }
                    }
                ;

/* External definitions */

translation_unit:
                    external_declaration
                        { 
                            yyinfo("translation_unit => external_declaration"); 
                        }
                    | translation_unit external_declaration
                        { 
                            yyinfo("translation_unit => translation_unit external_declaration"); 
                        }
                    ;

external_declaration:
                        function_definition
                            { 
                                yyinfo("external_declaration => function_definition"); 
                            }
                        | declaration
                            { 
                                yyinfo("external_declaration => declaration"); 
                            }
                        ;

function_definition: // to prevent block change here which is there in the compound statement grammar rule
                     // this rule is slightly modified by expanding the original compound statement rule over here
                    declaration_specifiers declarator declaration_list_opt change_scope LEFT_CURLY_BRACKET block_item_list_opt RIGHT_CURLY_BRACKET
                        { 
                            yyinfo("function_definition => declaration_specifiers declarator declaration_list_opt compound_statement"); 
                            tableCount = 0;
                            $2->isFunction = true;
                            changeTable(globalTable);
                        }
                    ;

declaration_list_opt:
                        declaration_list
                            { 
                                yyinfo("declaration_list_opt => declaration_list"); 
                            }
                        |
                            { 
                                yyinfo("declaration_list_opt => epsilon"); 
                            }
                        ;

declaration_list:
                    declaration
                        { 
                            yyinfo("declaration_list => declaration"); 
                        }
                    | declaration_list declaration
                        { 
                            yyinfo("declaration_list => declaration_list declaration"); 
                        }
                    ;

%%

void yyerror(string s) {
    printf("ERROR [Line %d] : %s\n", lineCount, s.c_str());
}

void yyinfo(string s) {
    #ifdef _DEBUG
        printf("INFO [Line %d] : %s\n", lineCount, s.c_str());
    #endif
}

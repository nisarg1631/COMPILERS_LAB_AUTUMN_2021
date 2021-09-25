%{
    #include <stdio.h>
    extern int yylex();
    extern int lineCount;
    void yyerror(char *);
    void yyinfo(char *);
%}

%union {
    int intVal;
    float floatVal;
    char *charVal;
    char *stringVal;
    char *identifierVal;
}

%token AUTO
%token BREAK
%token CASE
%token CHAR
%token CONST
%token CONTINUE
%token DEFAULT
%token DO
%token DOUBLE
%token ELSE
%token ENUM
%token EXTERN
%token FLOAT
%token FOR
%token GOTO
%token IF
%token INLINE
%token INT
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
%token VOID
%token VOLATILE
%token WHILE
%token _BOOL
%token _COMPLEX
%token _IMAGINARY

%token<stringVal> IDENTIFIER
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

%nonassoc RIGHT_PARENTHESES
%nonassoc ELSE

%start translation_unit

%%

/* Expressions */

primary_expression: 
                    IDENTIFIER 
                        { yyinfo("primary_expression => IDENTIFIER"); printf("\t\t\t\tIDENTIFIER = %s\n", $1); }
                    | INTEGER_CONSTANT 
                        { yyinfo("primary_expression => INTEGER_CONSTANT"); printf("\t\t\t\tINTEGER_CONSTANT = %d\n", $1); }
                    | FLOATING_CONSTANT 
                        { yyinfo("primary_expression => FLOATING_CONSTANT"); printf("\t\t\t\tFLOATING_CONSTANT = %f\n", $1); }
                    | CHARACTER_CONSTANT 
                        { yyinfo("primary_expression => CHARACTER_CONSTANT"); printf("\t\t\t\tCHARACTER_CONSTANT = %s\n", $1); }
                    | STRING_LITERAL 
                        { yyinfo("primary_expression => STRING_LITERAL"); printf("\t\t\t\tSTRING_LITERAL = %s\n", $1); }
                    | LEFT_PARENTHESES expression RIGHT_PARENTHESES
                        { yyinfo("primary_expression => ( expression )"); }
                    ;

postfix_expression:
                    primary_expression
                        { yyinfo("postfix_expression => primary_expression"); }
                    | postfix_expression LEFT_SQUARE_BRACKET expression RIGHT_SQUARE_BRACKET
                        { yyinfo("postfix_expression => postfix_expression [ expression ]"); }
                    | postfix_expression LEFT_PARENTHESES argument_expression_list_opt RIGHT_PARENTHESES
                        { yyinfo("postfix_expression => postfix_expression ( argument_expression_list_opt )"); }
                    | postfix_expression DOT IDENTIFIER
                        { yyinfo("postfix_expression => postfix_expression . IDENTIFIER"); printf("\t\t\t\tIDENTIFIER = %s\n", $3); }
                    | postfix_expression ARROW IDENTIFIER
                        { yyinfo("postfix_expression => postfix_expression -> IDENTIFIER"); printf("\t\t\t\tIDENTIFIER = %s\n", $3); }
                    | postfix_expression INCREMENT
                        { yyinfo("postfix_expression => postfix_expression ++"); }
                    | postfix_expression DECREMENT
                        { yyinfo("postfix_expression => postfix_expression --"); }
                    | LEFT_PARENTHESES type_name RIGHT_PARENTHESES LEFT_CURLY_BRACKET initialiser_list RIGHT_CURLY_BRACKET
                        { yyinfo("postfix_expression => ( type_name ) { initialiser_list }"); }
                    | LEFT_PARENTHESES type_name RIGHT_PARENTHESES LEFT_CURLY_BRACKET initialiser_list COMMA RIGHT_CURLY_BRACKET
                        { yyinfo("postfix_expression => ( type_name ) { initialiser_list , }"); }
                    ;

argument_expression_list_opt:
                                argument_expression_list
                                    { yyinfo("argument_expression_list_opt => argument_expression_list"); }
                                |
                                    { yyinfo("argument_expression_list_opt => epsilon"); }
                                ;

argument_expression_list:
                            assignment_expression
                                { yyinfo("argument_expression_list => assignment_expression"); }
                            | argument_expression_list COMMA assignment_expression
                                { yyinfo("argument_expression_list => argument_expression_list , assignment_expression"); }
                            ;

unary_expression:
                    postfix_expression
                        { yyinfo("unary_expression => postfix_expression"); }
                    | INCREMENT unary_expression
                        { yyinfo("unary_expression => ++ unary_expression"); }
                    | DECREMENT unary_expression
                        { yyinfo("unary_expression => -- unary_expression"); }
                    | unary_operator cast_expression
                        { yyinfo("unary_expression => unary_operator cast_expression"); }
                    | SIZEOF unary_expression
                        { yyinfo("unary_expression => sizeof unary_expression"); }
                    | SIZEOF LEFT_PARENTHESES type_name RIGHT_PARENTHESES
                        { yyinfo("unary_expression => sizeof ( type_name )"); }
                    ;

unary_operator:
                BITWISE_AND
                    { yyinfo("unary_operator => &"); }
                | ASTERISK
                    { yyinfo("unary_operator => *"); }
                | PLUS
                    { yyinfo("unary_operator => +"); }
                | MINUS
                    { yyinfo("unary_operator => -"); }
                | TILDE
                    { yyinfo("unary_operator => ~"); }
                | EXCLAMATION
                    { yyinfo("unary_operator => !"); }
                ;

cast_expression:
                unary_expression
                    { yyinfo("cast_expression => unary_expression"); }
                | LEFT_PARENTHESES type_name RIGHT_PARENTHESES cast_expression
                    { yyinfo("cast_expression => ( type_name ) cast_expression"); }
                ;

multiplicative_expression:
                            cast_expression
                                { yyinfo("multiplicative_expression => cast_expression"); }
                            | multiplicative_expression ASTERISK cast_expression
                                { yyinfo("multiplicative_expression => multiplicative_expression * cast_expression"); }
                            | multiplicative_expression SLASH cast_expression
                                { yyinfo("multiplicative_expression => multiplicative_expression / cast_expression"); }
                            | multiplicative_expression MODULO cast_expression
                                { yyinfo("multiplicative_expression => multiplicative_expression % cast_expression"); }
                            ;

additive_expression:
                    multiplicative_expression
                        { yyinfo("additive_expression => multiplicative_expression"); }
                    | additive_expression PLUS multiplicative_expression
                        { yyinfo("additive_expression => additive_expression + multiplicative_expression"); }
                    | additive_expression MINUS multiplicative_expression
                        { yyinfo("additive_expression => additive_expression - multiplicative_expression"); }
                    ;

shift_expression:
                    additive_expression
                        { yyinfo("shift_expression => additive_expression"); }
                    | shift_expression LEFT_SHIFT additive_expression
                        { yyinfo("shift_expression => shift_expression << additive_expression"); }
                    | shift_expression RIGHT_SHIFT additive_expression
                        { yyinfo("shift_expression => shift_expression >> additive_expression"); }
                    ;

relational_expression:
                        shift_expression
                            { yyinfo("relational_expression => shift_expression"); }
                        | relational_expression LESS_THAN shift_expression
                            { yyinfo("relational_expression => relational_expression < shift_expression"); }
                        | relational_expression GREATER_THAN shift_expression
                            { yyinfo("relational_expression => relational_expression > shift_expression"); }
                        | relational_expression LESS_EQUAL_THAN shift_expression
                            { yyinfo("relational_expression => relational_expression <= shift_expression"); }
                        | relational_expression GREATER_EQUAL_THAN shift_expression
                            { yyinfo("relational_expression => relational_expression >= shift_expression"); }
                        ;

equality_expression:
                    relational_expression
                        { yyinfo("equality_expression => relational_expression"); }
                    | equality_expression EQUALS relational_expression
                        { yyinfo("equality_expression => equality_expression == relational_expression"); }
                    | equality_expression NOT_EQUALS relational_expression
                        { yyinfo("equality_expression => equality_expression != relational_expression"); }
                    ;

AND_expression:
                equality_expression
                    { yyinfo("AND_expression => equality_expression"); }
                | AND_expression BITWISE_AND equality_expression
                    { yyinfo("AND_expression => AND_expression & equality_expression"); }
                ;

exclusive_OR_expression:
                        AND_expression
                            { yyinfo("exclusive_OR_expression => AND_expression"); }
                        | exclusive_OR_expression BITWISE_XOR AND_expression
                            { yyinfo("exclusive_OR_expression => exclusive_OR_expression ^ AND_expression"); }
                        ;

inclusive_OR_expression:
                        exclusive_OR_expression
                            { yyinfo("inclusive_OR_expression => exclusive_OR_expression"); }
                        | inclusive_OR_expression BITWISE_OR exclusive_OR_expression
                            { yyinfo("inclusive_OR_expression => inclusive_OR_expression | exclusive_OR_expression"); }
                        ;

logical_AND_expression:
                        inclusive_OR_expression
                            { yyinfo("logical_AND_expression => inclusive_OR_expression"); }
                        | logical_AND_expression LOGICAL_AND inclusive_OR_expression
                            { yyinfo("logical_AND_expression => logical_AND_expression && inclusive_OR_expression"); }
                        ;

logical_OR_expression:
                        logical_AND_expression
                            { yyinfo("logical_OR_expression => logical_AND_expression"); }
                        | logical_OR_expression LOGICAL_OR logical_AND_expression
                            { yyinfo("logical_OR_expression => logical_OR_expression || logical_AND_expression"); }
                        ;

conditional_expression:
                        logical_OR_expression
                            { yyinfo("conditional_expression => logical_OR_expression"); }
                        | logical_OR_expression QUESTION_MARK expression COLON conditional_expression
                            { yyinfo("conditional_expression => logical_OR_expression ? expression : conditional_expression"); }
                        ;

assignment_expression:
                        conditional_expression
                            { yyinfo("assignment_expression => conditional_expression"); }
                        | unary_expression assignment_operator assignment_expression
                            { yyinfo("assignment_expression => unary_expression assignment_operator assignment_expression"); }
                        ;

assignment_operator:
                    ASSIGNMENT
                        { yyinfo("assignment_operator => ="); }
                    | ASTERISK_ASSIGNMENT
                        { yyinfo("assignment_operator => *="); }
                    | SLASH_ASSIGNMENT
                        { yyinfo("assignment_operator => /="); }
                    | MODULO_ASSIGNMENT
                        { yyinfo("assignment_operator => %="); }
                    | PLUS_ASSIGNMENT
                        { yyinfo("assignment_operator => += "); }
                    | MINUS_ASSIGNMENT
                        { yyinfo("assignment_operator => -= "); }
                    | LEFT_SHIFT_ASSIGNMENT
                        { yyinfo("assignment_operator => <<="); }
                    | RIGHT_SHIFT_ASSIGNMENT
                        { yyinfo("assignment_operator => >>="); }
                    | BITWISE_AND_ASSIGNMENT
                        { yyinfo("assignment_operator => &="); }
                    | BITWISE_XOR_ASSIGNMENT
                        { yyinfo("assignment_operator => ^="); }
                    | BITWISE_OR_ASSIGNMENT
                        { yyinfo("assignment_operator => |="); }
                    ;

expression:
            assignment_expression
                { yyinfo("expression => assignment_expression"); }
            | expression COMMA assignment_expression
                { yyinfo("expression => expression , assignment_expression"); }
            ;

constant_expression:
                    conditional_expression
                        { yyinfo("constant_expression => conditional_expression"); }
                    ;

/* Declarations */

declaration:
            declaration_specifiers init_declarator_list_opt SEMI_COLON
                { yyinfo("declaration => declaration_specifiers init_declarator_list_opt ;"); }
            ;

init_declarator_list_opt:
                            init_declarator_list
                                { yyinfo("init_declarator_list_opt => init_declarator_list"); }
                            |
                                { yyinfo("init_declarator_list_opt => epsilon"); }
                            ;

declaration_specifiers:
                        storage_class_specifier declaration_specifiers_opt
                            { yyinfo("declaration_specifiers => storage_class_specifier declaration_specifiers_opt"); }
                        | type_specifier declaration_specifiers_opt
                            { yyinfo("declaration_specifiers => type_specifier declaration_specifiers_opt"); }
                        | type_qualifier declaration_specifiers_opt
                            { yyinfo("declaration_specifiers => type_qualifier declaration_specifiers_opt"); }
                        | function_specifier declaration_specifiers_opt
                            { yyinfo("declaration_specifiers => function_specifier declaration_specifiers_opt"); }
                        ;

declaration_specifiers_opt:
                            declaration_specifiers
                                { yyinfo("declaration_specifiers_opt => declaration_specifiers"); }
                            |
                                { yyinfo("declaration_specifiers_opt => epsilon "); }
                            ;

init_declarator_list:
                        init_declarator
                            { yyinfo("init_declarator_list => init_declarator"); }
                        | init_declarator_list COMMA init_declarator
                            { yyinfo("init_declarator_list => init_declarator_list , init_declarator"); }
                        ;

init_declarator:
                declarator
                    { yyinfo("init_declarator => declarator"); }
                | declarator ASSIGNMENT initialiser
                    { yyinfo("init_declarator => declarator = initialiser"); }
                ;

storage_class_specifier:
                        EXTERN
                            { yyinfo("storage_class_specifier => extern"); }
                        | STATIC
                            { yyinfo("storage_class_specifier => static"); }
                        | AUTO
                            { yyinfo("storage_class_specifier => auto"); }
                        | REGISTER
                            { yyinfo("storage_class_specifier => register"); }
                        ;

type_specifier:
                VOID
                    { yyinfo("type_specifier => void"); }
                | CHAR
                    { yyinfo("type_specifier => char"); }
                | SHORT
                    { yyinfo("type_specifier => short"); }
                | INT
                    { yyinfo("type_specifier => int"); }
                | LONG
                    { yyinfo("type_specifier => long"); }
                | FLOAT
                    { yyinfo("type_specifier => float"); }
                | DOUBLE
                    { yyinfo("type_specifier => double"); }
                | SIGNED
                    { yyinfo("type_specifier => signed"); }
                | UNSIGNED
                    { yyinfo("type_specifier => unsigned"); }
                | _BOOL
                    { yyinfo("type_specifier => _Bool"); }
                | _COMPLEX
                    { yyinfo("type_specifier => _Complex"); }
                | _IMAGINARY
                    { yyinfo("type_specifier => _Imaginary"); }
                | enum_specifier 
                    { yyinfo("type_specifier => enum_specifier"); }
                ;

specifier_qualifier_list:
                            type_specifier specifier_qualifier_list_opt
                                { yyinfo("specifier_qualifier_list => type_specifier specifier_qualifier_list_opt"); }
                            | type_qualifier specifier_qualifier_list_opt
                                { yyinfo("specifier_qualifier_list => type_qualifier specifier_qualifier_list_opt"); }
                            ;

specifier_qualifier_list_opt:
                                specifier_qualifier_list
                                    { yyinfo("specifier_qualifier_list_opt => specifier_qualifier_list"); }
                                | 
                                    { yyinfo("specifier_qualifier_list_opt => epsilon"); }
                                ;

enum_specifier:
                ENUM identifier_opt LEFT_CURLY_BRACKET enumerator_list RIGHT_CURLY_BRACKET 
                    { yyinfo("enum_specifier => enum identifier_opt { enumerator_list }"); }
                | ENUM identifier_opt LEFT_CURLY_BRACKET enumerator_list COMMA RIGHT_CURLY_BRACKET
                    { yyinfo("enum_specifier => enum identifier_opt { enumerator_list , }"); }
                | ENUM IDENTIFIER
                    { yyinfo("enum_specifier => enum IDENTIFIER"); printf("\t\t\t\tIDENTIFIER = %s\n", $2); }
                ;

identifier_opt:
                IDENTIFIER 
                    { yyinfo("identifier_opt => IDENTIFIER"); printf("\t\t\t\tIDENTIFIER = %s\n", $1); }
                | 
                    { yyinfo("identifier_opt => epsilon"); }
                ;

enumerator_list:
                enumerator 
                    { yyinfo("enumerator_list => enumerator"); }
                | enumerator_list COMMA enumerator
                    { yyinfo("enumerator_list => enumerator_list , enumerator"); }
                ;

enumerator:
            IDENTIFIER 
                { yyinfo("enumerator => ENUMERATION_CONSTANT"); printf("\t\t\t\tENUMERATION_CONSTANT = %s\n", $1); }
            | IDENTIFIER ASSIGNMENT constant_expression
                { yyinfo("enumerator => ENUMERATION_CONSTANT = constant_expression"); printf("\t\t\t\tENUMERATION_CONSTANT = %s\n", $1); }
            ;

type_qualifier:
                CONST
                    { yyinfo("type_qualifier => const"); }
                | RESTRICT
                    { yyinfo("type_qualifier => restrict"); }
                | VOLATILE
                    { yyinfo("type_qualifier => volatile"); }
                ;

function_specifier:
                    INLINE
                        { yyinfo("function_specifier => inline"); }
                    ;

declarator:
            pointer_opt direct_declarator
                { yyinfo("declarator => pointer_opt direct_declarator"); }
            ;

pointer_opt:
            pointer
                { yyinfo("pointer_opt => pointer"); }
            |
                { yyinfo("pointer_opt => epsilon"); }
            ;

direct_declarator:
                    IDENTIFIER 
                        { yyinfo("direct_declarator => IDENTIFIER"); printf("\t\t\t\tIDENTIFIER = %s\n", $1); }
                    | LEFT_PARENTHESES declarator RIGHT_PARENTHESES
                        { yyinfo("direct_declarator => ( declarator )"); }
                    | direct_declarator LEFT_SQUARE_BRACKET type_qualifier_list_opt assignment_expression_opt RIGHT_SQUARE_BRACKET
                        { yyinfo("direct_declarator => direct_declarator [ type_qualifier_list_opt assignment_expression_opt ]"); }
                    | direct_declarator LEFT_SQUARE_BRACKET STATIC type_qualifier_list_opt assignment_expression RIGHT_SQUARE_BRACKET
                        { yyinfo("direct_declarator => direct_declarator [ static type_qualifier_list_opt assignment_expression ]"); }
                    | direct_declarator LEFT_SQUARE_BRACKET type_qualifier_list STATIC assignment_expression RIGHT_SQUARE_BRACKET
                        { yyinfo("direct_declarator => direct_declarator [ type_qualifier_list static assignment_expression ]"); }
                    | direct_declarator LEFT_SQUARE_BRACKET type_qualifier_list_opt ASTERISK RIGHT_SQUARE_BRACKET
                        { yyinfo("direct_declarator => direct_declarator [ type_qualifier_list_opt * ]"); }
                    | direct_declarator LEFT_PARENTHESES parameter_type_list RIGHT_PARENTHESES
                        { yyinfo("direct_declarator => direct_declarator ( parameter_type_list )"); }
                    | direct_declarator LEFT_PARENTHESES identifier_list_opt RIGHT_PARENTHESES
                        { yyinfo("direct_declarator => direct_declarator ( identifier_list_opt )"); }
                    ;

type_qualifier_list_opt:
                        type_qualifier_list
                            { yyinfo("type_qualifier_list_opt => type_qualifier_list"); }
                        |
                            { yyinfo("type_qualifier_list_opt => epsilon"); }
                        ;

assignment_expression_opt:
                            assignment_expression
                                { yyinfo("assignment_expression_opt => assignment_expression"); }
                            |
                                { yyinfo("assignment_expression_opt => epsilon"); }
                            ;

identifier_list_opt:
                    identifier_list
                        { yyinfo("identifier_list_opt => identifier_list"); }
                    |
                        { yyinfo("identifier_list_opt => epsilon"); }
                    ;

pointer:
        ASTERISK type_qualifier_list_opt
            { yyinfo("pointer => * type_qualifier_list_opt"); }
        | ASTERISK type_qualifier_list_opt pointer
            { yyinfo("pointer => * type_qualifier_list_opt pointer"); }
        ;

type_qualifier_list:
                    type_qualifier
                        { yyinfo("type_qualifier_list => type_qualifier"); }
                    | type_qualifier_list type_qualifier
                        { yyinfo("type_qualifier_list => type_qualifier_list type_qualifier"); }
                    ;

parameter_type_list:
                    parameter_list
                        { yyinfo("parameter_type_list => parameter_list"); }
                    | parameter_list COMMA ELLIPSIS
                        { yyinfo("parameter_type_list => parameter_list , ..."); }
                    ;

parameter_list:
                parameter_declaration
                    { yyinfo("parameter_list => parameter_declaration"); }
                | parameter_list COMMA parameter_declaration
                    { yyinfo("parameter_list => parameter_list , parameter_declaration"); }
                ;

parameter_declaration:
                        declaration_specifiers declarator
                            { yyinfo("parameter_declaration => declaration_specifiers declarator"); }
                        | declaration_specifiers
                            { yyinfo("parameter_declaration => declaration_specifiers"); }
                        ;

identifier_list:
                IDENTIFIER 
                    { yyinfo("identifier_list => IDENTIFIER"); printf("\t\t\t\tIDENTIFIER = %s\n", $1); }
                | identifier_list COMMA IDENTIFIER
                    { yyinfo("identifier_list => identifier_list , IDENTIFIER"); printf("\t\t\t\tIDENTIFIER = %s\n", $3); }
                ;

type_name:
            specifier_qualifier_list
                { yyinfo("type_name => specifier_qualifier_list"); }
            ;

initialiser:
            assignment_expression
                { yyinfo("initialiser => assignment_expression"); }
            | LEFT_CURLY_BRACKET initialiser_list RIGHT_CURLY_BRACKET
                { yyinfo("initialiser => { initialiser_list }"); }  
            | LEFT_CURLY_BRACKET initialiser_list COMMA RIGHT_CURLY_BRACKET
                { yyinfo("initialiser => { initialiser_list , }"); }
            ;

initialiser_list:
                    designation_opt initialiser
                        { yyinfo("initialiser_list => designation_opt initialiser"); }
                    | initialiser_list COMMA designation_opt initialiser
                        { yyinfo("initialiser_list => initialiser_list , designation_opt initialiser"); }
                    ;

designation_opt:
                designation
                    { yyinfo("designation_opt => designation"); }
                |
                    { yyinfo("designation_opt => epsilon"); }
                ;

designation:
            designator_list ASSIGNMENT
                { yyinfo("designation => designator_list ="); }
            ;

designator_list:
                designator
                    { yyinfo("designator_list => designator"); }
                | designator_list designator
                    { yyinfo("designator_list => designator_list designator"); }
                ;

designator:
            LEFT_SQUARE_BRACKET constant_expression RIGHT_SQUARE_BRACKET
                { yyinfo("designator => [ constant_expression ]"); }
            | DOT IDENTIFIER
                { yyinfo("designator => . IDENTIFIER"); printf("\t\t\t\tIDENTIFIER = %s\n", $2); }   
            ;

/* Statements */

statement:
            labeled_statement
                { yyinfo("statement => labeled_statement"); }
            | compound_statement
                { yyinfo("statement => compound_statement"); }
            | expression_statement
                { yyinfo("statement => expression_statement"); }
            | selection_statement
                { yyinfo("statement => selection_statement"); }
            | iteration_statement
                { yyinfo("statement => iteration_statement"); }
            | jump_statement
                { yyinfo("statement => jump_statement"); }
            ;

labeled_statement:
                    IDENTIFIER COLON statement
                        { yyinfo("labeled_statement => IDENTIFIER : statement"); printf("\t\t\t\tIDENTIFIER = %s\n", $1); }
                    | CASE constant_expression COLON statement
                        { yyinfo("labeled_statement => case constant_expression : statement"); }    
                    | DEFAULT COLON statement
                        { yyinfo("labeled_statement => default : statement"); }
                    ;

compound_statement:
                    LEFT_CURLY_BRACKET block_item_list_opt RIGHT_CURLY_BRACKET
                        { yyinfo("compound_statement => { block_item_list_opt }"); }
                    ;

block_item_list_opt:
                    block_item_list
                        { yyinfo("block_item_list_opt => block_item_list"); }
                    |
                        { yyinfo("block_item_list_opt => epsilon"); }
                    ;

block_item_list:
                block_item
                    { yyinfo("block_item_list => block_item"); }
                | block_item_list block_item
                    { yyinfo("block_item_list => block_item_list block_item"); }
                ;

block_item:
            declaration
                { yyinfo("block_item => declaration"); }
            | statement
                { yyinfo("block_item => statement"); }
            ;

expression_statement:
                        expression_opt SEMI_COLON
                            { yyinfo("expression_statement => expression_opt ;"); }
                        ;

expression_opt:
                expression
                    { yyinfo("expression_opt => expression"); }
                |
                    { yyinfo("expression_opt => epsilon"); }
                ;

selection_statement:
                    IF LEFT_PARENTHESES expression RIGHT_PARENTHESES statement
                        { yyinfo("selection_statement => if ( expression ) statement"); }
                    | IF LEFT_PARENTHESES expression RIGHT_PARENTHESES statement ELSE statement
                        { yyinfo("selection_statement => if ( expression ) statement else statement"); }
                    | SWITCH LEFT_PARENTHESES expression RIGHT_PARENTHESES statement
                        { yyinfo("selection_statement => switch ( expression ) statement"); }
                    ;

iteration_statement:
                    WHILE LEFT_PARENTHESES expression RIGHT_PARENTHESES statement
                        { yyinfo("iteration_statement => while ( expression ) statement"); }
                    | DO statement WHILE LEFT_PARENTHESES expression RIGHT_PARENTHESES SEMI_COLON
                        { yyinfo("iteration_statement => do statement while ( expression ) ;"); }
                    | FOR LEFT_PARENTHESES expression_opt SEMI_COLON expression_opt SEMI_COLON expression_opt RIGHT_PARENTHESES statement
                        { yyinfo("iteration_statement => for ( expression_opt ; expression_opt ; expression_opt ) statement"); }
                    | FOR LEFT_PARENTHESES declaration expression_opt SEMI_COLON expression_opt RIGHT_PARENTHESES statement
                        { yyinfo("iteration_statement => for ( declaration expression_opt ; expression_opt ) statement"); }
                    ;

jump_statement:
                GOTO IDENTIFIER SEMI_COLON
                    { yyinfo("jump_statement => goto IDENTIFIER ;"); printf("\t\t\t\tIDENTIFIER = %s\n", $2); }    
                | CONTINUE SEMI_COLON
                    { yyinfo("jump_statement => continue ;"); }
                | BREAK SEMI_COLON
                    { yyinfo("jump_statement => break ;"); }
                | RETURN expression_opt SEMI_COLON
                    { yyinfo("jump_statement => return expression_opt ;"); }
                ;

/* External definitions */

translation_unit:
                    external_declaration
                        { yyinfo("translation_unit => external_declaration"); }
                    | translation_unit external_declaration
                        { yyinfo("translation_unit => translation_unit external_declaration"); }
                    ;

external_declaration:
                        function_definition
                            { yyinfo("external_declaration => function_definition"); }
                        | declaration
                            { yyinfo("external_declaration => declaration"); }
                        ;

function_definition:
                    declaration_specifiers declarator declaration_list_opt compound_statement
                        { yyinfo("function_definition => declaration_specifiers declarator declaration_list_opt compound_statement"); }
                    ;

declaration_list_opt:
                        declaration_list
                            { yyinfo("declaration_list_opt => declaration_list"); }
                        |
                            { yyinfo("declaration_list_opt => epsilon"); }
                        ;

declaration_list:
                    declaration
                        { yyinfo("declaration_list => declaration"); }
                    | declaration_list declaration
                        { yyinfo("declaration_list => declaration_list declaration"); }
                    ;

%%

void yyerror(char* s) {
    printf("ERROR [Line %d] : %s\n", lineCount, s);
}

void yyinfo(char* s) {
    printf("INFO [Line %d] : %s\n", lineCount, s);
}

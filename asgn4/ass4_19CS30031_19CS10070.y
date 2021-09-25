%{
    #include <stdio.h>
    extern int yylex();
    void yyerror(char *s);
%}

%union {
    int intVal;
    float floatVal;
    char charVal;
    char *stringVal;
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

%token MULTI_LINE_COMMENT
%token SINGLE_LINE_COMMENT

%start translation_unit

%%

/* Expressions */

primary_expression: 
                    IDENTIFIER
                    | INTEGER_CONSTANT
                    | FLOATING_CONSTANT
                    | CHARACTER_CONSTANT
                    | STRING_LITERAL
                    | LEFT_PARENTHESES expression RIGHT_PARENTHESES
                    ;

postfix_expression:
                    primary_expression
                    | postfix_expression LEFT_SQUARE_BRACKET expression RIGHT_SQUARE_BRACKET
                    | postfix_expression LEFT_PARENTHESES argument_expression_list_opt RIGHT_PARENTHESES
                    | postfix_expression DOT IDENTIFIER
                    | postfix_expression ARROW IDENTIFIER
                    | postfix_expression INCREMENT
                    | postfix_expression DECREMENT
                    | LEFT_PARENTHESES type_name RIGHT_PARENTHESES LEFT_CURLY_BRACKET initialiser_list RIGHT_CURLY_BRACKET
                    | LEFT_PARENTHESES type_name RIGHT_PARENTHESES LEFT_CURLY_BRACKET initialiser_list COMMA RIGHT_CURLY_BRACKET
                    ;

argument_expression_list_opt:
                                argument_expression_list
                                | 
                                ;

argument_expression_list:
                            assignment_expression
                            | argument_expression_list COMMA assignment_expression
                            ;

unary_expression:
                    postfix_expression
                    | INCREMENT unary_expression
                    | DECREMENT unary_expression
                    | unary_operator cast_expression
                    | SIZEOF unary_expression
                    | SIZEOF LEFT_PARENTHESES type_name RIGHT_PARENTHESES
                    ;

unary_operator:
                BITWISE_AND
                | ASTERISK
                | PLUS
                | MINUS
                | TILDE
                | EXCLAMATION
                ;

cast_expression:
                unary_expression
                | LEFT_PARENTHESES type_name RIGHT_PARENTHESES cast_expression
                ;

multiplicative_expression:
                            cast_expression
                            | multiplicative_expression ASTERISK cast_expression
                            | multiplicative_expression SLASH cast_expression
                            | multiplicative_expression MODULO cast_expression
                            ;

additive_expression:
                    multiplicative_expression
                    | additive_expression PLUS multiplicative_expression
                    | additive_expression MINUS multiplicative_expression
                    ;

shift_expression:
                    additive_expression
                    | shift_expression LEFT_SHIFT additive_expression
                    | shift_expression RIGHT_SHIFT additive_expression
                    ;

relational_expression:
                        shift_expression
                        | relational_expression LESS_THAN shift_expression
                        | relational_expression GREATER_THAN shift_expression
                        | relational_expression LESS_EQUAL_THAN shift_expression
                        | relational_expression GREATER_EQUAL_THAN shift_expression
                        ;

equality_expression:
                    relational_expression
                    | equality_expression EQUALS relational_expression
                    | equality_expression NOT_EQUALS relational_expression
                    ;

AND_expression:
                equality_expression
                | AND_expression BITWISE_AND equality_expression
                ;

exclusive_OR_expression:
                        AND_expression
                        | exclusive_OR_expression BITWISE_XOR AND_expression
                        ;

inclusive_OR_expression:
                        exclusive_OR_expression
                        | inclusive_OR_expression BITWISE_OR exclusive_OR_expression
                        ;

logical_AND_expression:
                        inclusive_OR_expression
                        | logical_AND_expression LOGICAL_AND inclusive_OR_expression
                        ;

logical_OR_expression:
                        logical_AND_expression
                        | logical_OR_expression LOGICAL_OR logical_AND_expression
                        ;

conditional_expression:
                        logical_OR_expression
                        | logical_OR_expression QUESTION_MARK expression COLON conditional_expression
                        ;

assignment_expression:
                        conditional_expression
                        | unary_expression assignment_operator assignment_expression
                        ;

assignment_operator:
                    ASSIGNMENT
                    | ASTERISK_ASSIGNMENT
                    | SLASH_ASSIGNMENT
                    | MODULO_ASSIGNMENT
                    | PLUS_ASSIGNMENT
                    | MINUS_ASSIGNMENT
                    | LEFT_SHIFT_ASSIGNMENT
                    | RIGHT_SHIFT_ASSIGNMENT
                    | BITWISE_AND_ASSIGNMENT
                    | BITWISE_XOR_ASSIGNMENT
                    | BITWISE_OR_ASSIGNMENT
                    ;

expression:
            assignment_expression
            | expression COMMA assignment_expression
            ;

constant_expression:
                    conditional_expression
                    ;

/* Declarations */

declaration:
            declaration_specifiers init_declarator_list_opt SEMI_COLON
            ;

init_declarator_list_opt:
                            init_declarator_list
                            |
                            ;

declaration_specifiers:
                        storage_class_specifier declaration_specifiers_opt
                        | type_specifier declaration_specifiers_opt
                        | type_qualifier declaration_specifiers_opt
                        | function_specifier declaration_specifiers_opt
                        ;

declaration_specifiers_opt:
                            declaration_specifiers
                            |
                            ;

init_declarator_list:
                        init_declarator
                        | init_declarator_list COMMA init_declarator
                        ;

init_declarator:
                declarator
                | declarator ASSIGNMENT initialiser
                ;

storage_class_specifier:
                        EXTERN
                        | STATIC
                        | AUTO
                        | REGISTER
                        ;

type_specifier:
                VOID
                | CHAR
                | SHORT
                | INT
                | LONG
                | FLOAT
                | DOUBLE
                | SIGNED
                | UNSIGNED
                | _BOOL
                | _COMPLEX
                | _IMAGINARY
                | enum_specifier
                ;

specifier_qualifier_list:
                            type_specifier specifier_qualifier_list_opt
                            | type_qualifier specifier_qualifier_list_opt
                            ;

specifier_qualifier_list_opt:
                                specifier_qualifier_list
                                | 
                                ;

enum_specifier:
                ENUM identifier_opt LEFT_CURLY_BRACKET enumerator_list RIGHT_CURLY_BRACKET
                ENUM identifier_opt LEFT_CURLY_BRACKET enumerator_list COMMA RIGHT_CURLY_BRACKET
                ENUM IDENTIFIER
                ;

identifier_opt:
                IDENTIFIER
                |
                ;

enumerator_list:
                enumerator
                | enumerator_list COMMA enumerator
                ;

enumerator:
            IDENTIFIER
            | IDENTIFIER ASSIGNMENT constant_expression
            ;

type_qualifier:
                CONST
                | RESTRICT
                | VOLATILE
                ;

function_specifier:
                    INLINE
                    ;

declarator:
            pointer_opt direct_declarator
            ;

pointer_opt:
            pointer
            |
            ;

direct_declarator:
                    IDENTIFIER
                    | LEFT_PARENTHESES declarator RIGHT_PARENTHESES
                    | direct_declarator LEFT_SQUARE_BRACKET type_qualifier_list_opt assignment_expression_opt RIGHT_SQUARE_BRACKET
                    | direct_declarator LEFT_SQUARE_BRACKET STATIC type_qualifier_list_opt assignment_expression RIGHT_SQUARE_BRACKET
                    | direct_declarator LEFT_SQUARE_BRACKET type_qualifier_list STATIC assignment_expression RIGHT_SQUARE_BRACKET
                    | direct_declarator LEFT_SQUARE_BRACKET type_qualifier_list_opt ASTERISK RIGHT_SQUARE_BRACKET
                    | direct_declarator LEFT_PARENTHESES parameter_type_list RIGHT_PARENTHESES
                    | direct_declarator LEFT_PARENTHESES identifier_list_opt RIGHT_PARENTHESES
                    ;

type_qualifier_list_opt:
                        type_qualifier_list
                        |
                        ;

assignment_expression_opt:
                            assignment_expression
                            |
                            ;

identifier_list_opt:
                    identifier_list
                    |
                    ;

pointer:
        ASTERISK type_qualifier_list_opt
        | ASTERISK type_qualifier_list_opt pointer
        ;

type_qualifier_list:
                    type_qualifier
                    | type_qualifier_list type_qualifier
                    ;

parameter_type_list:
                    parameter_list
                    | parameter_list COMMA ELLIPSIS
                    ;

parameter_list:
                parameter_declaration
                | parameter_list COMMA parameter_declaration
                ;

parameter_declaration:
                        declaration_specifiers declarator
                        | declaration_specifiers
                        ;

identifier_list:
                IDENTIFIER
                | identifier_list COMMA IDENTIFIER
                ;

type_name:
            specifier_qualifier_list
            ;

initialiser:
            assignment_expression
            | LEFT_CURLY_BRACKET initialiser_list RIGHT_CURLY_BRACKET
            | LEFT_CURLY_BRACKET initialiser_list COMMA RIGHT_CURLY_BRACKET
            ;

initialiser_list:
                    designation_opt initialiser
                    | initialiser_list COMMA designation_opt initialiser
                    ;

designation_opt:
                designation
                |
                ;

designation:
            designator_list ASSIGNMENT
            ;

designator_list:
                designator
                | designator_list designator
                ;

designator:
            LEFT_SQUARE_BRACKET constant_expression RIGHT_SQUARE_BRACKET
            | DOT IDENTIFIER
            ;

/* Statements */



%%

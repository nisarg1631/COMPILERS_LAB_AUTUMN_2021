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

%%

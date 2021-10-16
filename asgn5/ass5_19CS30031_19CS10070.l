%{
    #include <stdio.h>
    #include <stdlib.h>
    #include "ass5_19CS30031_19CS10070_translator.h"
    #include "y.tab.h"
    int lineCount = 1;
%}

%x MULTI_LINE_COMMENT_BODY
%x SINGLE_LINE_COMMENT_BODY

ESCAPE_SEQUENCE         "\\\'"|"\\\""|"\\?"|"\\\\"|"\\a"|"\\b"|"\\f"|"\\n"|"\\r"|"\\t"|"\\v"

IDENTIFIER              [A-Za-z_][A-Za-z0-9_]*

DIGIT                   [0-9]
DIGIT_SEQUENCE          {DIGIT}+
NONZERO_DIGIT           [1-9]
INTEGER_CONSTANT        {NONZERO_DIGIT}{DIGIT}*|"0"

EXPONENT_PART           [eE]([+-]?){DIGIT_SEQUENCE}
FRACTIONAL_CONSTANT     {DIGIT_SEQUENCE}?\.{DIGIT_SEQUENCE}|{DIGIT_SEQUENCE}\.
FLOATING_CONSTANT       {FRACTIONAL_CONSTANT}({EXPONENT_PART}?)|{DIGIT_SEQUENCE}{EXPONENT_PART}

ENUMERATION_CONSTANT    {IDENTIFIER}

C_CHAR                  [^\'\n\\]|{ESCAPE_SEQUENCE}
C_CHAR_SEQUENCE         {C_CHAR}+
CHARACTER_CONSTANT      \'{C_CHAR_SEQUENCE}\'

S_CHAR                  [^\"\n\\]|{ESCAPE_SEQUENCE}
S_CHAR_SEQUENCE         {S_CHAR}+
STRING_LITERAL          \"({S_CHAR_SEQUENCE}?)\"

WHITESPACE              [ \t]
NEWLINE                 \n

%%

"auto"                          { return AUTO; }
"break"                         { return BREAK; }
"case"                          { return CASE; }
"char"                          { return CHAR; }
"const"                         { return CONST; }
"continue"                      { return CONTINUE; }
"default"                       { return DEFAULT; }
"do"                            { return DO; }
"double"                        { return DOUBLE; }
"else"                          { return ELSE; }
"enum"                          { return ENUM; }
"extern"                        { return EXTERN; }
"float"                         { return FLOAT; }
"for"                           { return FOR; }
"goto"                          { return GOTO; }
"if"                            { return IF; }
"inline"                        { return INLINE; }
"int"                           { return INT; }
"long"                          { return LONG; }
"register"                      { return REGISTER; }
"restrict"                      { return RESTRICT; }
"return"                        { return RETURN; }
"short"                         { return SHORT; }
"signed"                        { return SIGNED; }
"sizeof"                        { return SIZEOF; }
"static"                        { return STATIC; }
"struct"                        { return STRUCT; }
"switch"                        { return SWITCH; }
"typedef"                       { return TYPEDEF; }
"union"                         { return UNION; }
"unsigned"                      { return UNSIGNED; }
"void"                          { return VOID; }
"volatile"                      { return VOLATILE; }
"while"                         { return WHILE; }
"_Bool"                         { return _BOOL; }
"_Complex"                      { return _COMPLEX; }
"_Imaginary"                    { return _IMAGINARY; }

{IDENTIFIER}                    { yylval.symbol = currentTable->lookup(yytext);; return IDENTIFIER; }
{INTEGER_CONSTANT}              { yylval.intVal = atoi(yytext); return INTEGER_CONSTANT; }
{FLOATING_CONSTANT}             { yylval.floatVal = atof(yytext); return FLOATING_CONSTANT; }
{CHARACTER_CONSTANT}            { yylval.charVal = strdup(yytext); return CHARACTER_CONSTANT; }
{STRING_LITERAL}                { yylval.stringVal = strdup(yytext); return STRING_LITERAL; }

"["                             { return LEFT_SQUARE_BRACKET; }
"++"                            { return INCREMENT; }
"/"                             { return SLASH; }
"?"                             { return QUESTION_MARK; }
"="                             { return ASSIGNMENT; }
","                             { return COMMA; }
"]"                             { return RIGHT_SQUARE_BRACKET; }
"("                             { return LEFT_PARENTHESES; }
"{"                             { return LEFT_CURLY_BRACKET; }
"}"                             { return RIGHT_CURLY_BRACKET; }
"."                             { return DOT; }
"->"                            { return ARROW; }
"*"                             { return ASTERISK; }
"+"                             { return PLUS; }
"-"                             { return MINUS; }
"~"                             { return TILDE; }
"!"                             { return EXCLAMATION; }
"%"                             { return MODULO; }
"<<"                            { return LEFT_SHIFT; }
">>"                            { return RIGHT_SHIFT; }
"<"                             { return LESS_THAN; }
">"                             { return GREATER_THAN; }
"<="                            { return LESS_EQUAL_THAN; }
">="                            { return GREATER_EQUAL_THAN; }
":"                             { return COLON; }
";"                             { return SEMI_COLON; }
"..."                           { return ELLIPSIS; }
"*="                            { return ASTERISK_ASSIGNMENT; }
"/="                            { return SLASH_ASSIGNMENT; }
"%="                            { return MODULO_ASSIGNMENT; }
"+="                            { return PLUS_ASSIGNMENT; }
"-="                            { return MINUS_ASSIGNMENT; }
"<<="                           { return LEFT_SHIFT_ASSIGNMENT; }
"#"                             { return HASH; }
"--"                            { return DECREMENT; }
")"                             { return RIGHT_PARENTHESES; }
"&"                             { return BITWISE_AND; }
"=="                            { return EQUALS; }
"^"                             { return BITWISE_XOR; }
"|"                             { return BITWISE_OR; }
"&&"                            { return LOGICAL_AND; }
"||"                            { return LOGICAL_OR; }
">>="                           { return RIGHT_SHIFT_ASSIGNMENT; }
"!="                            { return NOT_EQUALS; }
"&="                            { return BITWISE_AND_ASSIGNMENT; }
"|="                            { return BITWISE_OR_ASSIGNMENT; }
"^="                            { return BITWISE_XOR_ASSIGNMENT; }

"/*"                            { BEGIN(MULTI_LINE_COMMENT_BODY); }
<MULTI_LINE_COMMENT_BODY>"*/"   { BEGIN(INITIAL); }
<MULTI_LINE_COMMENT_BODY>.      { }
<MULTI_LINE_COMMENT_BODY>"\n"   { lineCount++; /* printf("\n-------------------- Parsing Line No. %d  --------------------\n\n", lineCount); */ }

"//"                            { BEGIN(SINGLE_LINE_COMMENT_BODY); }
<SINGLE_LINE_COMMENT_BODY>"\n"  { BEGIN(INITIAL); /* lineCount++; printf("\n-------------------- Parsing Line No. %d  --------------------\n\n", lineCount); */ }
<SINGLE_LINE_COMMENT_BODY>.     { }

{WHITESPACE}                    { }
{NEWLINE}                       { lineCount++; /* printf("\n-------------------- Parsing Line No. %d  --------------------\n\n", lineCount); */ }
.                               { printf("ERROR [Line %d] : Invalid token %s\n", lineCount, yytext); return INVALID_TOKEN; }

%%

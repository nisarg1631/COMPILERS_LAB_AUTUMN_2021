#include <stdio.h>
extern int yyparse();

int main() {
    printf("-------------------- Parsing Line No. 1  --------------------\n");
    yyparse();
    return 0;
}

int printStr(char *s);
int readInt(int *eP);
int printInt(int n);

int numG1 = 20, numG2;
char charG1 = 'b', charG2;
int *ptrG1, *ptrG2;
char *strG1 = "Hello World, I am a global string.", *strG2;

int main() {
    printStr("\n#### TEST 4 (Global variables, pointers and addresses) ####");

    int numL1 = 5, numL2;
    char charL1 = 'a', charL2;
    int *ptrL1 = &numL1, *ptrL2;
    char *strL1 = "Hello World, I am a local string.", *strL2;
    
    printStr("\nLocal variables: ");
    printStr("\nnumL1 = ");
    printInt(numL1);
    printStr(", charL1 (ascii value) = ");
    printInt(charL1);
    printStr(", ptrL1 (adress, truncated to first 32 bits only) = ");
    printInt(ptrL1);
    printStr(", strL1 = ");
    printStr(strL1);

    ptrG1 = &numG1;

    printStr("\nGlobal variables: ");
    printStr("\nnumG1 = ");
    printInt(numG1);
    printStr(", charG1 (ascii value) = ");
    printInt(charG1);
    printStr(", ptrG1 (adress, truncated to first 32 bits only) = ");
    printInt(ptrG1);
    printStr(", strG1 = ");
    printStr(strG1);
    
    printStr("\n");

    printStr("\nAssigning locals to globals: ");
    numG2 = numL1;
    charG2 = charL1;
    ptrG2 = ptrL1;
    strG2 = strL1;
    printStr("\nnumG2 = ");
    printInt(numG2);
    printStr(", charG2 (ascii value) = ");
    printInt(charG2);
    printStr(", ptrG2 (adress, truncated to first 32 bits only) = ");
    printInt(ptrG2);
    printStr(", strG2 = ");
    printStr(strG2);
    if(numG2 == numL1 && charG2 == charL1 && ptrG2 == ptrL1 && strG2 == strL1) {
        printStr("\nSUCCESS: Local variables assigned to global variables.");
    } else {
        printStr("\nFAILURE: Local variables not assigned to global variables.");
    }

    printStr("\n");

    printStr("\nAssigning globals to locals: ");
    numL2 = numG1;
    charL2 = charG1;
    ptrL2 = ptrG1;
    strL2 = strG1;
    printStr("\nnumL2 = ");
    printInt(numL2);
    printStr(", charL2 (ascii value) = ");
    printInt(charL2);
    printStr(", ptrL2 (adress, truncated to first 32 bits only) = ");
    printInt(ptrL2);
    printStr(", strL2 = ");
    printStr(strL2);
    if(numL2 == numG1 && charL2 == charG1 && ptrL2 == ptrG1 && strL2 == strG1) {
        printStr("\nSUCCESS: Global variables assigned to local variables.");
    } else {
        printStr("\nFAILURE: Global variables not assigned to local variables.");
    }

    printStr("\n");

    printStr("\nAssigning globals to globals: ");
    numG2 = numG1;
    charG2 = charG1;
    ptrG2 = ptrG1;
    strG2 = strG1;
    printStr("\nnumG2 = ");
    printInt(numG2);
    printStr(", charG2 (ascii value) = ");
    printInt(charG2);
    printStr(", ptrG2 (adress, truncated to first 32 bits only) = ");
    printInt(ptrG2);
    printStr(", strG2 = ");
    printStr(strG2);
    if(numG2 == numG1 && charG2 == charG1 && ptrG2 == ptrG1 && strG2 == strG1) {
        printStr("\nSUCCESS: Global variables assigned to global variables.");
    } else {
        printStr("\nFAILURE: Global variables not assigned to global variables.");
    }

    printStr("\n\n");
    return 0;
}

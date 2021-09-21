#include "myl.h"

#define INT_MAX __INT32_MAX__
#define INT_MIN (-INT_MAX - 1)

int main(){

    printStr("#### Testing printStr ####\n");
    char *s[3] = {"This is a sample string to be printed.", "Next follows an empty string.", ""};
    char *newline = "\n";
    for(int i=0; i<3; i++){
        printStr("\""); 
        int ret = printStr(s[i]); 
        printStr("\" -> number of characters printed = ");
        printInt(ret);
        printStr(newline);
    }
    printStr(newline);

    printStr("#### Testing printInt ####\n");
    int ints[11] = {0, 1, -1, 12, -12, 1234, -1234, 12345, -12345, INT_MAX, INT_MIN};
    for(int i=0; i<11; i++){
        int ret = printInt(ints[i]);
        printStr(" -> number of characters printed = ");
        printInt(ret);
        printStr(newline);
    }
    printStr(newline);

    printStr("#### Testing printFlt ####\n");
    float floats[10] = {0.F, -12.34F, 12.345F, -2.F, 2.F, 0.1234F, -0.1234F, 123.456F, 0.001F, -0.0106F};
    for(int i=0; i<10; i++){
        int ret = printFlt(floats[i]);
        printStr(" -> number of characters printed = ");
        printInt(ret);
        printStr(newline);
    }
    printStr(newline);

    printStr("#### Testing readInt ####\n");
    int ntemp;
    int rep = 0;
    do {
        printStr("Enter an integer: ");
        int ret = readInt(&ntemp);
        if(ret == ERR) 
            printStr("Invalid input. ");
        else{
            printStr("Successfuly read integer: ");
            printInt(ntemp);
        }
        printStr("\nTo continue reading enter 1 otherwise 0: ");
        readInt(&rep);
    } while(rep != 0);
    printStr(newline);

    printStr("#### Testing readFlt ####\n");
    float ftemp;
    rep = 0;
    do {
        printStr("Enter a float: ");
        int ret = readFlt(&ftemp);
        if(ret == ERR) 
            printStr("Invalid input. ");
        else{
            printStr("Successfuly read float: ");
            printFlt(ftemp);
        }
        printStr("\nTo continue reading enter 1 otherwise 0: ");
        readInt(&rep);
    } while(rep != 0);
    printStr(newline);

    return 0;
}

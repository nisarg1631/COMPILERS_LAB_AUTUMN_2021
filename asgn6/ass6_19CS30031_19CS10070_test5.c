int printStr(char *s);
int readInt(int *eP);
int printInt(int n);

int max(int num1, int num2) {
    if (num1 > num2)
        return num1;
    else
        return num2;
}

int main() {
    printStr("\n#### TEST 5 (Loops) ####\n");
    
    printStr("\nPattern printing using FOR loop:");
    printStr("\n\n");

    int n = 9;
    int i, j;
    for(i = 1; i <= 2 * n - 1; i++) {
        int x1 = n + 1 - i;
        int x2 = i - n + 1;
        for(j = 1; j <= 2 * n - 1; j++) {
            int y1 = n + 1 - j;
            int y2 = j - n + 1;
            printInt(max(max(x1, x2), max(y1, y2))); // nested function call check
            printStr(" ");
        }
        printStr("\n");
    }
    printStr("\n");

    int pow2 = 1;
    printStr("\nPowers of 2 using WHILE loop: ");
    while(pow2 <= 1024) {
        printInt(pow2);
        printStr(" ");
        pow2 = pow2 * 2;
    }
    printStr("\n\n");

    i = 0;
    int iters, ep;
    printStr("\nTesting DO-WHILE loop:");
    do {
        if(i == 0) {
            printStr("\nEntered do-while loop. Enter number of times you wish to run the loop after this: ");
            iters = readInt(&ep);
            if(ep != 0) {
                printStr("\nInvalid input. Exiting...\n\n");
                return 0;
            }
        } else {
            printStr("\nIteration ");
            printInt(i);
            printStr("\n");
        }
    } while(i++ < iters);

    printStr("\n\n");
    return 0;
}

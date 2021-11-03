int printStr(char *s);
int readInt(int *eP);
int printInt(int n);

void fillFib(int *fib, int n) {
    int i;
    for (i = 0; i < n; i++) {
        if (i == 0) {
            fib[i] = 0;
        } else if (i == 1) {
            fib[i] = 1;
        } else {
            fib[i] = fib[i - 1] + fib[i - 2];
        }
    }
}

int main() {
    printStr("\n#### TEST 2 (1-D Arrays) ####");
    int fib[15];
    fillFib(fib, 15);
    int i;
    printStr("\nFibonacci Series: ");
    for (i = 0; i < 15; i++) {
        printInt(fib[i]);
        printStr(" ");
    }
    char vowels[5];
    vowels[0] = 'a';
    vowels[1] = 'e';
    vowels[2] = 'i';
    vowels[3] = 'o';
    vowels[4] = 'u';
    printStr("\nAscii values of vowels: ");
    for (i = 0; i < 5; i++) {
        printInt(vowels[i]);
        printStr(" ");
    }
    printStr("\n\n");
    return 0;
}

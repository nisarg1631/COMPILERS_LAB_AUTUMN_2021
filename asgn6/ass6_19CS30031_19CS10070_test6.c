int printStr(char *s);
int readInt(int *eP);
int printInt(int n);

void printNums(int curr, int till) {
    if (curr > till) {
        return;
    }
    printInt(curr);
    if(curr == till) {
        printStr("\n");
    } else {
        printStr(" ");
        printNums(curr + 1, till);
    }
}

int fibNum(int n) {
    if (n == 0) {
        return 0;
    } else if (n == 1) {
        return 1;
    } else {
        return fibNum(n - 1) + fibNum(n - 2);
    }
}

int main() {
    printStr("\n#### TEST 6 (Recursive function calls) ####");
    int start, end, ep;
    printStr("\nEnter start: ");
    start = readInt(&ep);
    if (ep != 0) {
        printStr("Invalid start\n");
        return 0;
    }
    printStr("Enter end: ");
    end = readInt(&ep);
    if (ep != 0) {
        printStr("Invalid end\n");
        return 0;
    }
    if (start > end) {
        printStr("Invalid range\n");
        return 0;
    }
    printStr("Numbers from ");
    printInt(start);
    printStr(" to ");
    printInt(end);
    printStr(" are: ");
    printNums(start, end);

    printStr("\n\nEnter value of n (<40) to find the nth fibonacci number: ");
    int n;
    n = readInt(&ep);
    if (ep != 0) {
        printStr("Invalid n\n\n");
        return 0;
    } else if (n >= 40) {
        printStr("n should be less than 40\n\n");
        return 0;
    } else {
        printStr("\nfib(");
        printInt(n);
        printStr(") = ");
        printInt(fibNum(n));
        printStr("\n\n");
    }
    return 0;
}

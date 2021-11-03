int printStr(char *s);
int readInt(int *eP);
int printInt(int n);

int testInt(int num) {
    return num;
}

int *testIntPtr(int *numPtr) {
    return numPtr;
}

char testChar(char c) {
    return c;
}

char *testCharPtr(char *cPtr) {
    return cPtr;
}

void testVoid() {
    printStr("\nHello World, I am a void function. I don't return anything.");
    return;
}

int main() {
    printStr("\n#### TEST 3 (Function calls and returns) ####");
    int n = 10;
    int *nPtr = &n;
    
    printStr("\nTesting integer value return: ");
    int retInt = testInt(n);
    if (retInt == n) {
        printStr("Passed");
    } else {
        printStr("Failed");
    }
    
    printStr("\nTesting integer pointer return: ");
    int *retIntPtr = testIntPtr(nPtr);
    if (retIntPtr == nPtr) {
        printStr("Passed");
    } else {
        printStr("Failed");
    }

    char c = 'm';
    char *cPtr = &c;

    printStr("\nTesting character value return: ");
    char retChar = testChar(c);
    if (retChar == c) {
        printStr("Passed");
    } else {
        printStr("Failed");
    }

    printStr("\nTesting character pointer return: ");
    char *retCharPtr = testCharPtr(cPtr);
    if (retCharPtr == cPtr) {
        printStr("Passed");
    } else {
        printStr("Failed");
    }

    char *str = "Hello World, I am a string.";
    printStr("\nTesting string return: ");
    char *retStr = testCharPtr(str);
    if (retStr == str) {
        printStr("Passed");
    } else {
        printStr("Failed");
    }
    printStr(" [ Passed string: ");
    printStr(str);
    printStr(" ], ");
    printStr("[ Returned string: ");
    printStr(retStr);
    printStr(" ]");

    printStr("\nTesting void return: ");
    testVoid();
    printStr("\n\n");
    return 0;
}

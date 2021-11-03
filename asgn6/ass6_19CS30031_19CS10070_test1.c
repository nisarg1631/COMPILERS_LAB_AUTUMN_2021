int printStr(char *s);
int readInt(int *eP);
int printInt(int n);

void testIncDec(int n) {
    printStr("Value passed to function = ");
    printInt(n);
}

int main() {
    printStr("\n#### TEST 1 (Arithmetic operators) ####");
    int n1, n2, n3, n4;
    n1 = 30;
    n2 = 16;
    n3 = 7;
    n4 = -22;

    printStr("\nn1 = ");
    printInt(n1);
    printStr("\nn2 = ");
    printInt(n2);
    printStr("\nn3 = ");
    printInt(n3);
    printStr("\nn4 = ");
    printInt(n4);

    int n5 = n1 + n2;
    int n6 = n1 - n2;
    int n7 = n1 * n2;
    int n8 = n1 / n2;
    int n9 = n1 % n2;

    printStr("\nn1 + n2 = ");
    printInt(n5);
    printStr("\nn1 - n2 = ");
    printInt(n6);
    printStr("\nn1 * n2 = ");
    printInt(n7);
    printStr("\nn1 / n2 = ");
    printInt(n8);
    printStr("\nn1 % n2 = ");
    printInt(n9);

    int n10 = -n1 + n2 - n3 + n4 + 10;
    int n11 = n1 * n2 / n3 + n4 - 10;
    int n12 = n1 + n2 * n3 / n4 - 0;
    int n13 = (n1 + n2) * (-n3 / n4) - 15;
    printStr("\n-n1 + n2 - n3 + n4 + 10 = ");
    printInt(n10);
    printStr("\nn1 * n2 / n3 + n4 - 10 = ");
    printInt(n11);
    printStr("\nn1 + n2 * n3 / n4 - 0 = ");
    printInt(n12);
    printStr("\n(n1 + n2) * (n3 / n4) - 15 = ");
    printInt(n13);
    printStr("\n-n3 = ");
    printInt(-n3);
    printStr("\n-n4 = ");
    printInt(-n4);

    printStr("\nTest pre increment: ");
    testIncDec(++n1);
    printStr(", Value after call = ");
    printInt(n1);

    printStr("\nTest post increment: ");
    testIncDec(n1++);
    printStr(", Value after call = ");
    printInt(n1);

    printStr("\nTest pre decrement: ");
    testIncDec(--n1);
    printStr(", Value after call = ");
    printInt(n1);

    printStr("\nTest post decrement: ");
    testIncDec(n1--);
    printStr(", Value after call = ");
    printInt(n1);
    
    printStr("\n\n");
    return 0;
}

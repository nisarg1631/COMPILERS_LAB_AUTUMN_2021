/*
*   // Nisarg Upadhyaya - 19cs30031
*   // Animesh Jha - 19cs10070
*/

inline void foo1(int *restrict p1, const int p2, volatile int p3, ...) {
    auto int a;
    register int b;
    extern int c;
    static int d = 4;
}

const char *foo2(int b[const static 8], int c[static 9], int d[], int e[const *]);

enum e1;
enum e2 { TAG1, TAG2 };
enum { TAG3 = 0, TAG4 } e3;

signed main() {
    int a[6] = { 1, 2, [2]=3 };
    char b[] = "Test string :)";
    char c1 = 'c';
    char *c2 = &c1;
    *c2 = 'a';
    char **d = (char) { "a", b, "abc" };

    unsigned long n1 = +123456789;
    short n2 = ~16;
    float n3 = -3.53;
    double n4 = 2.99e-2;
    _Bool n5 = !1;
    double _Complex n6;
    double _Imaginary n7;

    n1 = (int) c;
    n1 = sizeof(int);
    n1 = sizeof n1;

    n1 *= n1, n1 /= n1, n1 %= n1;
    n1 += (n1 -= n1);
    n1 <<= (n1 >>= n1);
    n1 &= n1 |= n1 ^= n1;

    n1 = ( (n1==0 || n1==1) && n1!=n2 ) ? n1 = 0 : n2;
    a[n2] = n1;

    RANDOM_LOC:
        if (n3 < n4) {

            switch (n2) {
                case 0:
                    n2++;
                    break;
                default:
                    n2--;
            }

        } else if (n3 > n4) {
            if(n2 >= n1)
                n1++;
        } else {
            if(n2 <= n1)
                n2++;
        }
    
    while(n2--)
        goto RANDOM_LOC;

    for(;;)
    for(int i;;)
    for(int i=0, j=1; i!=j; i++) {
        if(j==1)
            continue;
    }

    do {
        n2++;
    } while(n2 < 0);

    int t1, t2, t3, t4, t5, t6;

    t1 = t1 + t2 - t3 / t4 * t5 % t6;
    t2 = t2<<2;
    t2 = t2>>2;
    t1 = t2 & t3 | t4 ^ t5;

    foo1(1,2,3,4,5,6);

    /* . and -> test */
    ms1.a = 3;
    ms2->a = 4;

    return 0;
}

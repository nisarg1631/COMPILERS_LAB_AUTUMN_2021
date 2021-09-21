/*
*   // Nisarg Upadhyaya - 19cs30031
*   // Animesh Jha - 19cs10070
*/

#define HELLO 1234

inline int foo(int *restrict p, ...) {
    auto int a = 1;
    register int b;
    extern int c;
    volatile int d;
    return a;
}

struct mystruct_ {
    _Bool b;
    _Complex c;
    _Imaginary i;
    int n;
};

union myunion {
    int x, y;
};

enum myenum {
    TAG1, TAG2
};

typedef struct mystruct_ mystruct;
static mystruct ms2;

void main() {
    int n1 = 4 * sizeof(int);
    for(int i = n1; i <= n1 && i >= 0; i++) {
        n1 /= 2;
        n1 *= 2;
        n1 += 1, n1 -= 1;
        n1 = n1 ^ n1 ^ n1; 
        n1 |= n1;
        n1 &= n1;
        if(n1 % 2 == 0)
            printf("n = %d\n", n1);
        else {
            n1 = n1 + n1 + (-n1) / 1;
            n1 <<= 2;
            n1 >>= 2;
        }
    }

    double d1 = 234.;
    double d2 = 234.e2;
    double d3 = .00;
    const float f1 = .234;
    float f2 = .234E-2;
    float f3 = 0.234e+2;
    float f4 = 12.234e01;
    unsigned long l = 12902311123;
    signed short s = -12;
    char c = '\?';
    char s1[] = "A string // comments dont work here :P /* not even multiline ones */";
    char s2[] = "" /* Empty string check */;
    int n2 = n1 & s ? 1 : 2;
    n2--;

    mystruct *ms1; // ok I understand this will give seg fault without allocating memory but I am not running it so :)
    switch (ms1->b) {
        case 1:
            ms2.n %= n2;
            ms2.n ^= ms2.n;
            break;
        default:
            break;
    }

    do {
        s << 2;
        s >> 2;
        s = ~s;
        s = s | s;
        if(s < 10 && s > 0)
            goto some_label;
        some_label:
            continue;
    } while(n2 != -1 || !n1);

    return;
}

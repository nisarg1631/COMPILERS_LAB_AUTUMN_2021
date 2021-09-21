#include "myl.h"

#define BUFFER 20
#define AFTERDECIMAL 6
#define INT_MAX __INT32_MAX__
#define INT_MIN (-INT_MAX - 1)

int printStr(char *s) {
    int len = 0;
    while (s[len] != '\0')
        len++;

    __asm__ __volatile__(
        "movl $1, %%eax \n\t"
        "movq $1, %%rdi \n\t"
        "syscall \n\t"
        :
        : "S"(s), "d"(len));

    return len;
}

int readInt(int *n) {
    char in[BUFFER];
    int len;

    __asm__ __volatile__ (
        "movl $0, %%eax \n\t" 
        "movq $0, %%rdi \n\t"
        "syscall \n\t"
        : "=a"(len)
        :"S"(in), "d"(BUFFER));

    if(len < 0)
        return ERR;
    
    int sign = 1, index = 0;
    long ret = 0;
    if(index < len) {
        if(in[index] == '-') {
            sign = -1;
            index++;
        } else if(in[index] == '+') {
            index++;
        }
    }
    
    while(index < len && in[index] != '\n') {
        if(in[index] < '0' || in[index] > '9')
            return ERR;
        int curr = (int)(in[index] - '0');
        ret *= 10;
        ret += (sign * curr);
        if(ret > INT_MAX || ret < INT_MIN)
            return ERR;
        index++;
    }

    *n = (int)ret;
    return OK;
}

int printInt(int n) {
    char out[BUFFER];
    int len = 0;
    long nl = n;
    if (nl < 0) {
        out[len++] = '-';
        nl = -nl;
    }
    while (nl) {
        out[len++] = (char)('0' + (nl % 10));
        nl /= 10;
    }
    if (len == 0)
        out[len++] = '0';

    int front = (out[0] == '-' ? 1 : 0);
    int back = len - 1;
    while (front < back) {
        char temp = out[front];
        out[front++] = out[back];
        out[back--] = temp;
    }

    __asm__ __volatile__(
        "movl $1, %%eax \n\t"
        "movq $1, %%rdi \n\t"
        "syscall \n\t"
        :
        : "S"(out), "d"(len));
    return len;
}

int readFlt(float *f){
    char in[BUFFER];
    int len;

    __asm__ __volatile__ (
        "movl $0, %%eax \n\t" 
        "movq $0, %%rdi \n\t"
        "syscall \n\t"
        : "=a"(len)
        :"S"(in), "d"(BUFFER));

    if(len < 0)
        return ERR;
    
    int sign = 1, index = 0, multiplier = 0, msign = 1;
    float ret = 0;
    if(index < len) {
        if(in[index] == '-') {
            sign = -1;
            index++;
        } else if(in[index] == '+') {
            index++;
        }
    }
    
    while(index < len && in[index] != '\n' && in[index] != '.' && in[index] != 'E' && in[index] != 'e') {
        if(in[index] < '0' || in[index] > '9')
            return ERR;
        int curr = (int)(in[index] - '0');
        ret *= 10;
        ret += curr;
        index++;
    }

    if(index < len && in[index] == '.') {
        index++;
        float shift = 10.F;
        while(index < len && in[index] != '\n' && in[index] != 'E' && in[index] != 'e') {
            if(in[index] < '0' || in[index] > '9')
                return ERR;
            float curr = (float)(in[index] - '0');
            curr /= shift;
            ret += curr;
            shift *= 10;
            index++;
        }
    }

    if(index < len && (in[index] == 'E' || in[index] == 'e')) {
        index++;
        if(index < len) {
            if(in[index] == '-') {
                msign = -1;
                index++;
            } else if(in[index] == '+') {
                index++;
            }
        }
        while(index < len && in[index] != '\n') {
            if(in[index] < '0' || in[index] > '9')
                return ERR;
            int curr = (int)(in[index] - '0');
            multiplier *= 10;
            multiplier += curr;
            index++;
        }
    }


    for(int i = 0; i < multiplier; i++) {
        if(msign == 1) {
            ret *= 10;
        } else {
            ret /= 10;
        }
    }
    *f = sign * ret;
    return OK;
}

int printFlt(float f) {
    char out[BUFFER];
    int len = 0;
    if (f < 0) {
        out[len++] = '-';
        f = -f;
    }

    int integral_part = (int)f;
    f -= integral_part;

    while (integral_part) {
        out[len++] = (char)('0' + (integral_part % 10));
        integral_part /= 10;
    }
    if (len == 0 || out[len - 1] == '-')
        out[len++] = '0';

    int front = (out[0] == '-' ? 1 : 0);
    int back = len - 1;
    while (front < back) {
        char temp = out[front];
        out[front++] = out[back];
        out[back--] = temp;
    }

    out[len++] = '.';

    for (int i = 0; i < AFTERDECIMAL; i++)
        f *= 10;

    int fractional_part = (int)f;
    front = len;

    for (int i = 0; i < AFTERDECIMAL; i++) {
        out[len++] = (char)('0' + (fractional_part % 10));
        fractional_part /= 10;
    }

    back = len - 1;
    while (front < back) {
        char temp = out[front];
        out[front++] = out[back];
        out[back--] = temp;
    }

    while(out[len-1] == '0')
        len--;

    __asm__ __volatile__(
        "movl $1, %%eax \n\t"
        "movq $1, %%rdi \n\t"
        "syscall \n\t"
        :
        : "S"(out), "d"(len));
    
    return len;
}

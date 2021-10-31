int g1 = 5, g2 = 6;
char *str = "heylo";
char g3 = 'a';

void prinStr(char *str);
void prinInt(int i);
int fib(int n) {
    if(n==1)
        prinInt(1);
    else 
        prinInt(n-1);
}

int main() {
    int i;
    char *str2 = "heylo2";
    if(i == 0) {
        prinInt(6);
    } else {
        prinInt(7);
    }
    return 0;
}

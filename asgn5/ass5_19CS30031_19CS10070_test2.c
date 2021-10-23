int main() {
    int n1, n2, n3;
    float *f1, **f2;
    f2 = &f1;
    f1 = *f2;
    *f1 = **f2;
    **f2 = *f1;
    ++n1;
    n2++;
    n3 = ~n2;
    n3 = +n2;
    n3 = -n2;
    return 0;
}

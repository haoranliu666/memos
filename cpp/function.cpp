// c flavor pointer
void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

// cpp flavor reference
void swap(int &a, int &b) {
    int temp = a;
    a = b;
    b = temp;
}

// default value
int sum(int a, int b=20);

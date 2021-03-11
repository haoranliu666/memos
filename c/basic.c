// bash environment build & execute:
//
// gcc test1.c test2.c -o main.out
// ./main.out

#include <stdio.h>

int main(void) {

    char ch = 'c';
    putchar(ch);

    bool a = true;
    int num1, num2, num3;
    const double num = 1.1;

    register int i = 1;

    printf("int 存储大小 : %lu \n", sizeof(int));

    printf("Hello, World!\n");
    return 0;
}

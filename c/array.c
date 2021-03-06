#include <stdio.h>


int main(void){
    //array
    int a[5] = {1, 2, 3, 4, 5};
    a[3] = 2;
    printf("%d\n", a[3]);

    //2 dimensional array
    int b[3][4];
    for(int i = 0; i < 3; i++){
        for(int j = 0; j < 4; j++)
            printf("%d\n", b[i][j]);
    }

    return 0;
}




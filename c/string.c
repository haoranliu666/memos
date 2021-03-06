#include <stdio.h>
#include <string.h>

int main(void){

    char s1[7] = {'R', 'U', 'N', 'O', 'O', 'B', '\0'};
    char s2[] = "Haha";
    printf("%s\n", s1);
    printf("%s\n", s2);

    //copy
    strcpy(s1, s2);
    printf("%s\n", s1);
    printf("%s\n", s2);

    //connect
    //strcat(s1, s2);

    //length
    int l = strlen(s1);
    printf("%d\n", l);

    //compare, 0 means s1==s2
    l = strcmp(s1, s2);
    printf("%d\n", l);

    //search char
    //strchr(s1, ch);

    //search sub-string
    //strstr(s1, s2);

    return 0;
}




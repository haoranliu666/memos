#include <stdio.h>

int main()
{
    //open
    FILE *fp = NULL;
    fp = fopen("hahaha.txt", "r");
    //r read; w write; a add; r+ read&write; w+ read&write

    //close
    fclose(fp);

    //read
    char buff[255];
    fp = fopen("hahaha.txt", "r");
    fgets(buff, 255, (FILE*)fp); //read 254+1 chars, the last one is \n or EOF
    printf("%s\n", buff );
    fclose(fp);

    //write
    fp = fopen("write.txt", "w");
    fprintf(fp, "This is testing for fprintf...\n");
    fputs("This is testing for fputs...\n", fp);
    fclose(fp);

    return 0;
}

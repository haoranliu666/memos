#include <stdio.h>
#include <string.h>

//define struct
struct Books
{
   char  title[50];
   char  author[50];
   char  subject[100];
   int   book_id;
};

//fuction of struct
void printBook( struct Books book );
int main (void)
{
    //declare a struct
    struct Books book;

    //use a value in the struct
    strcpy(book.title, "C Programming");
    strcpy(book.author, "Nuha Ali"); 
    strcpy(book.subject, "C Programming Tutorial");
    book.book_id = 6495407;

    printBook(book);

    //a pointer points to a struct
    struct Books *struct_pointer;
    struct_pointer = &book;
    puts(struct_pointer->title);

    return 0;
}

void printBook( struct Books book )
{
   printf( "Book title : %s\n", book.title);
   printf( "Book author : %s\n", book.author);
   printf( "Book subject : %s\n", book.subject);
   printf( "Book book_id : %d\n", book.book_id);
}

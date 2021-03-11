#include <iostream>
#include <string>
 
using namespace std;
 
int main ()
{
   string str1 = "runoob";
   string str2 = "google";
   string str3;
   int  len ;
 
   // copy
   str3 = str1;
   cout << "str3 : " << str3 << endl;
 
   // connect
   str3 = str1 + str2;
   cout << "str1 + str2 : " << str3 << endl;
 
   // length
   len = str3.size();
   cout << "str3.size() :  " << len << endl;
 
   return 0;
}

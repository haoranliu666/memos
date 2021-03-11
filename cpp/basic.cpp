#include <iostream>

using namespace std;

int main()
{
    cout << "Hello, world!" << endl;
    
    //reference, another name of the variable
    int i = 17;
    int &  r = i;
    r++;
    
    cout << i << endl;
    
    
    return 0;
}

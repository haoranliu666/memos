#include <iostream>
#include <string>

using namespace std;

int main()
{
    string name;
    cout << "What's your name" << endl;
    cin >> name;
    cout << "Hello, " << name << "!" << endl;
    
    //reference, another name of the variable
    int i = 17;
    int &  r = i;
    r++;
    
    cout << i << endl;
    
    
    return 0;
}

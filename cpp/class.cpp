#include <iostream>

using namespace std;

class Box
{
    public:
        double length; 
        double breadth;
        double height;
        double volume(void);
        void set( double len, double bre, double hei );
    
};

int main()
{
    Box box;

    box.set(5, 6, 7);
    cout << box.volume() << endl;
    
    return 0;
}

double Box::volume(void)
{
    return length * breadth * height;
}

void Box::set( double len, double bre, double hei)
{
    length = len;
    breadth = bre;
    height = hei;
}

#include<iostream>

using namespace std;

class One
{
public:
	One(){cout<<"IN CLASS ONE CONSTRUCTOR\n";}

};

class Two
{
public:
	explicit Two(const One &){cout<<"TWO Called"<<endl;}
};

void f(Two){cout<<"Two f() called"<<endl;}

int main()
{
One one;
f(Two(one));
return 0;
}

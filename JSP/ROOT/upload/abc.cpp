#include<iostream.h>
template<class T>
class Test
{
T n;
public£º
Test(){}
Test(T i){n=i;}
Test<T>operator+(const Test<T>&s)//operator+
{
static Test<T>temp;
temp.n=n+s.n;
return temp;
}
void disp(){cout<<"n="<<n<<endl;}
} ;
void main()
{
Test <int>t1(4),t2(5),t3;
t3=t1+t2;
t3.disp();
}

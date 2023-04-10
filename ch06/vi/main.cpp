#include <iostream>
#include "function.h"

using namespace std;

void print(int a, int b);


int main(){
  int a , b,d,e,0xff; 



  cout << "At first, ";
  print(a, b);

  swap(&a, &b);
  cout << "After swaping, ";
  print(a, b);


  cout << "input a: ";
  cin >> a;
  cout << "input b: ";
  cin >> b;
  a= increaseBy(a, 5);
  cout << "After adding a by 5, ";
  print(a, b);

}

void print( int a, int b ){
  cout << "a is " << a << ", and b is " << b << endl;
}

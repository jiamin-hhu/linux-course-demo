#include <iostream>
#include "function.h"

using namespace std;

void print(int a, int b);

int main(){
 
  int a , b; 
  int c;

  cout << "input a: ";
  cin >> a;
  cout << "input b: ";
  cin >> b;


  cout << "At first, ";
  print(a, b);

  swap(&a, &b);
  cout << "After swaping, ";
  print(a, b);


  a= increaseBy(a, 5);
  cout << "After adding a by 5, ";
  print(a, b);

}

void print( int a, int b ){
  cout << "a is " << a << ", and b is " << b << endl;
}

#include <iostream>
using namespace std; 

void swap(int* a, int* b){
  int t = *a;
  *a = *b;
  *b = t;
}

int increaseBy(int source, int step){
  //cout << "do something else" << endl;
  return source + step;
}


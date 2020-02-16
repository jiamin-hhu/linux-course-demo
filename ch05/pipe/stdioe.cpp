#include <iostream>
using namespace std;

int main(int argc, char** argv){
  string line;
  while (getline(cin,line)) {
    cout << "Get a line: " << line << endl;
  }

  cerr << "\nOops, it's the end ! " << endl;
}


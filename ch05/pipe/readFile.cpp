#include <iostream>
#include <fstream>
using namespace std;

int main(int argc, char** argv){
  ifstream myFile;
  myFile.open("readFile.cpp");
  string line;  
  while(getline(myFile, line)){
    cout << "Get a line: " << line << endl;  
  }  
  myFile.close();  
  cerr << "\nOops, it's the end! " << endl;
}


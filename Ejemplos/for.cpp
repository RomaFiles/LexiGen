#include <stdio.h>
#include <iostream>
#include <string>
#include <cstring>
#include <locale.h>
#include <Windows.h>
using namespace std;
int main(){
SetConsoleOutputCP(CP_UTF8);
// Inicio del programa en C++
int i;
for (i = 0; i<10; i = i + 1) {
cout << "Número " << i << endl;}

// Fin del programa en C++
return 0;
}
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
int n1;
int n2;
cout << "Digite el primer número" << endl;cin >> n1;
cout << "Digite el segundo número" << endl;cin >> n2;
if (n1>n2) {
cout << "El mayor es " << n1 << endl;}
else if (n2>n1) {
cout << "El mayor es " << n2 << endl;}
else {
cout << "Ambos números son iguales" << endl;}

// Fin del programa en C++
return 0;
}
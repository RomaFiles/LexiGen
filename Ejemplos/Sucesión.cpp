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
int num;
int i;
int incremento;
int alterna;
cout << "Ingrese el primer número de la sucesión: " << endl;cin >> num;
i = 1;
incremento = 5;
alterna = 0;
while (i<=10) {
cout << num << endl;if (alterna==0) {
num = num + incremento;
alterna = 1;
}
else {
num = num - 2;
alterna = 0;
}
i = i + 1;
}

// Fin del programa en C++
return 0;
}system("pause");
return 0;
}
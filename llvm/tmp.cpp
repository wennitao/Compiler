#include <cstdio>
#include <string>
int a[20][20] ;
int b = 1, c = 2 ;
int main() {
    int f = 1, fff = 2 ;
    bool ff = f < fff ;
    int d[20] ;
    d[0] = 1 ;
    int sum = a[0][1] + a[2][3] ;
    int **e ;
    e = new int* [3] ;
    e[0] = new int [20] ;
    e[1] = nullptr ;
    // int e = b + c ;
    // int** d = new int* [3] ;
    // d[0] = new int [10] ;
    // d[1] = new int [20] ;
    // d[0][0] = 1 ;
    return 0 ;
}
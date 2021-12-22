#include <cstdio>
#include <cstring>
#include <iostream>
int b = 1, e = 2 ;
int ff = b + e ;
int **c ;
void printInt (int n) {
    printf("%d", n) ;
}
void printlnInt (int n) {
    printf("%d\n", n) ;
}
class A {
public:
    int a, b ;
    A () {
        a = b = 1 ;
    }
    int sum (int c) {
        return a + b ;
    }
} ;
int main() {
    // int a = 1, b = 2, c = 3 ;
    // bool flag = (a < b) && (c < b) && (b < c) ;
    // for (int i = 1; i <= 10; i ++) {
    //     if (i == 1 || i == 2 && i == 2) {
    //         int c = 1, b = c + 1 ;
    //         int d = b + c ;
    //     }
    // }
    // printf("eeeee\n") ;
    int a = 1 ;
    if (a == 1 || a == 2) {
        a ++ ;
    }
    // printInt (a) ;
    // printlnInt (a) ;
    A test ;
    test.a = 2 ;
    int res = test.sum(1) ;
    return 0 ;
}
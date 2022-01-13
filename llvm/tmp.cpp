#include <iostream>
int main() {
	int** a ;
	a = new int* [10] ;
	a[0] = new int [10] ;
	for (int i = 0; i < 10; i ++) {
		a[0][i] = 1 ;
	}
	return 0 ;
}
#include <iostream>
class A {
public:
	int a ;
	A () {
		a = 1 ;
	}
	int geta() {
		return a ;
	}
} ;
int f (int a, int b) {
	return a ;
}
int main() {
	int b = 0 ;
	A tmp ;
	b = tmp.geta() ;
	return 0 ;
}
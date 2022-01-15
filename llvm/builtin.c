#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

#define BUFFER_LENGTH 1024

void print(char *str) {
    printf("%s", str) ;
}
void println (char *str) {
    printf("%s\n", str) ;
}
void printInt (int n) {
    printf("%d", n) ;
}
void printlnInt (int n) {
    printf("%d\n", n) ;
}
char* getString() {
    char *str = (char*) malloc(sizeof(char) * BUFFER_LENGTH);
    scanf("%s", str);
    return str ;
}
int getInt () {
    int n ;
    scanf("%d", &n) ;
    return n ;
}
char* toString(int n) {
    char *s = (char*) malloc (sizeof (char) * 15) ;
    sprintf(s, "%d", n) ;
    return s ;
}
int length (char *str) {
    int len = 0 ;
    for (; *str != '\0'; str ++) len ++ ;
    return len ;
}
char* substring (char *str, int left, int right) {
    char *substr = (char*) malloc (sizeof (char) * (right - left + 1)) ;
    for (int i = left; i < right; i ++)
        substr[i - left] = str[i] ;
    substr[right - left] = '\0' ;
    return substr ;
} 
int parseInt (char *str) {
    int res = 0 ;
    bool flag = 0 ;
    if (str[0] == '-') flag = 1 ;
    for (; *str != '\0'; str ++) {
        res = res * 10 + (*str - '0') ;
    } 
    return flag ? -res : res ;
}
int ord (char *str, int pos) {
    return str[pos] ; 
}
char* string_add (char *s1, char *s2) {
    char *str = (char*) malloc (sizeof (char) * (strlen (s1) + strlen (s2) + 1)) ;
    *str = '\0' ;
    strcat (str, s1); strcat (str, s2) ;
    return str; 
}
bool string_equal (char *s1, char *s2) {
    return strcmp (s1, s2) == 0 ;
}
bool string_notEqual (char *s1, char *s2) {
    return strcmp (s1, s2) != 0 ;
}
bool string_less (char *s1, char *s2) {
    return strcmp (s1, s2) < 0 ;
}
bool string_lessEqual (char *s1, char *s2) {
    return strcmp (s1, s2) <= 0 ;
}
bool string_greater (char *s1, char *s2) {
    return strcmp (s1, s2) > 0 ;
}
bool string_greaterEqual (char *s1, char *s2) {
    return strcmp (s1, s2) >= 0 ;
}
// int main() {
//     println (*toString (2)) ;
//     return 0 ;
// }
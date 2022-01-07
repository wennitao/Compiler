#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

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
    char *str = (char*) malloc (sizeof (char)) ;
    *str = '\0' ;
    int len = 0 ;
    char c ;
    c = getchar() ;
    while (c != '\n') {
        len ++ ;
        char *cur = (char*) malloc (sizeof (char) * (len + 1)) ;
        cur[0] = '\0' ;
        strcpy (cur, str) ;
        cur[len - 1] = c; cur[len] = '\0' ;
        free (str) ;
        str = cur ;
        c = getchar() ;
    }
    return str ;
}
int getInt () {
    int n ;
    scanf("%d", &n) ;
    return n ;
}
char* toString(int n) {
    bool flag = 0 ;
    if (n < 0) flag = 1, n = -n ;
    char *str ;
    if (n == 0) {
        str = (char*) malloc (sizeof (char) * 2) ;
        str[0] = '0'; str[1] = '\0' ;
    } else {
        int len = 0 ;
        while (n) {
            len ++ ;
            char *cur = (char*) malloc (sizeof (char) * (len + 1)) ;
            cur[0] = '\0' ;
            strcpy (cur + 1, str) ;
            cur[0] = n % 10 + '0' ;
            free (str) ;
            str = cur ;
            n /= 10 ;
        }
        if (flag) {
            len ++ ;
            char *cur = (char*) malloc (sizeof (char) * (len + 1)) ;
            cur[0] = '\0' ;
            strcpy (cur + 1, str) ;
            cur[0] = '-';
            free (str) ;
            str = cur ;
        }
    }
    return str ;
}
int array_size (char *arr) {
    return *((int*)(arr - 4)) ;
}
int string_length (char *str) {
    int len = 0 ;
    for (; *str != '\0'; str ++) len ++ ;
    return len ;
}
char* string_substring (char *str, int left, int right) {
    char *substr = (char*) malloc (sizeof (char) * (right - left + 1)) ;
    for (int i = left; i < right; i ++)
        substr[i - left] = str[i] ;
    substr[right - left] = '\0' ;
    return substr ;
} 
int string_parseInt (char *str) {
    int res = 0 ;
    bool flag = 0 ;
    if (str[0] == '-') flag = 1 ;
    for (; *str != '\0'; str ++) {
        res = res * 10 + (*str - '0') ;
    } 
    return flag ? -res : res ;
}
char string_ord (char *str, int pos) {
    return str[pos] ; 
}
char *string_add (char *s1, char *s2) {
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
#include<cstdio>

int n;
int *a;

void exchange(int x,int y)
{
    int t=a[x];
    a[x]=a[y];
    a[y]=t;
}

int makeHeap() {
    int i;
    int t;
    int j;
    i = (n - 1) / 2;
    t = 0;
    j = 0;
    while (i >= 0) {
        j = i * 2;
        if (i*2+1<n && a[i*2+1]<a[i*2]) j = i*2+1;
        if (a[i] > a[j]) {
            exchange(i,j);
        }
        i = i - 1;
    }
    return 0;
}

int adjustHeap(int n) {
    int i = 0;
    int j = 0;
    int t = 0;
    while (i * 2 < n) {
        j = i*2;
        if (i*2+1<n && a[i*2+1] < a[i*2]) j = i*2+1;
        if (a[i] > a[j]) {
            int t = a[i];
            a[i] = a[j];
            a[j] = t;
            i = j;
        }
        else break;
    }
    return 0;
}

int heapSort() {
    int t;
    int k;
    t = 0;
    for (k = 0; k < n; k = k + 1) {
        t = a[0];
        a[0] = a[n-k-1];
        a[n-k-1] = t;
        adjustHeap(n-k-1);
    }
    return 0;
}

int main() {
    int i;
    scanf("%d", &n);
	// n = getString().parseInt();
	a = new int[n];

    for (i = 0; i < n; i = i + 1)
		a[i] = i;
    makeHeap();
    heapSort();
    for (i = 0; i < n; i = i + 1)
        printf("%d ", a[i]);
        // print(toString(a[i]) + " ");
	printf("\n");
    return 0;
}
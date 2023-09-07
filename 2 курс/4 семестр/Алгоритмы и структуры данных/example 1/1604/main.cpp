#include <iostream>
#include <cstdio>
#include <string>
#include <vector>
#include <cmath>
#include <climits>
#define PI 3.14159265359
using namespace std;

int n, k = 0, a[10001], p[10001], ans[10001], sum = 0, l, r, z, mx, mn;

void swap(int arr[], int i, int j){
        int tmp = arr[i];
        arr[i] = arr[j];
        arr[j] = tmp;
}

void qSort(int arr[], int l, int r){
    int i, j, m;
    i = l, j = r;
    m = arr[(l + r)/2];
    while(i <= j){
        while (arr[i] < m) i++;
        while (arr[j] > m) j--;
        if (i > j) break;
        swap(arr, i, j);
        swap(p, i, j);
        i++;
        j--;
    }
    if (l < j) qSort(arr, l, j);
    if (i < r) qSort(arr, i, r);
}

int main()
{
    cin >> n;
    for(int i = 0; i < n; i++){
        cin >> a[i];
        sum += a[i];
        p[i] = i + 1;
    }
    qSort(a, 0, n-1);
    l = 0, r = n - 1;

    while(k < sum){
        mx = 0, mn = 10000;
        ans[k] = p[r];
        --a[r];
        k++;
        ans[k] = p[l];
        --a[l];
        k++;
         for(int i = 0; i < n; i++)if(a[i]>0){
            if(a[i] < mn){
                mn = a[i];
                l = i;
            }

            if(a[i] > mx && i!=l){
                mx = a[i];
                r = i;
            }
        }
    }
    for(int i = 0; i < sum - 1; i++)cout << ans[i] << " ";
    cout << ans[sum - 1] << endl;

    return 0;
}
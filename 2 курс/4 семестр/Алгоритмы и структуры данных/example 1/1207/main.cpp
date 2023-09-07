#include <iostream>
#include <cstdio>
#include <string>
#include <vector>
#include <cmath>
#include <climits>
#define PI 3.14159265359
using namespace std;

long n, k, x[10001], y[10001], p[10001], y_min, p_min;
double sum=0, ang[10001];

void swap(int i, int j){
        long tmp = x[i];
        x[i] = x[j];
        x[j] = tmp;

        tmp = y[i];
        y[i] = y[j];
        y[j] = tmp;

        tmp = p[i];
        p[i] = p[j];
        p[j] = tmp; 

        double tmp2 = ang[i];
        ang[i] = ang[j];
        ang[j] = tmp2; 
}

void bubble_sort(long x[], long y[]){
    for(int i = 1; i < n - 1; i++)
        for(int j = i + 1; j < n; j++)
            if(ang[i] > ang[j]){
                swap(i, j);
            }
}

int main()
{
    y_min = LONG_MAX;
    cin >> n;
    for(int i = 0; i < n; i++){
        cin >> x[i];
        cin >> y[i];
        p[i] = i + 1;
        if(y[i] < y_min || y[i] == y_min && x[i] < x[p_min]){
            y_min = y[i];
            p_min = i;
        }
    }
    swap(0, p_min);

    for(int i = 1; i < n; i++) {
        if(x[i] == x[0])ang[i] = PI/2; 
        else if(y[i] == y[0])ang[i] = 0;
        else ang[i] = atan((double)(y[i]-y[0])/(double)(x[i]-x[0]));
        if(ang[i] < 0) ang[i] = ang[i] + 2*PI;
    }

    bubble_sort(x, y);

    //for(int i = 0; i < n; i++) cout << x[i] << " " << y[i]<< " " << ang[i] << endl;

    cout << p[0] << " " << p[n/2] << endl;
    
    return 0;
}

 
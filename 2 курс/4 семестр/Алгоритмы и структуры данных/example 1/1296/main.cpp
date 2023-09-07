#include <iostream>
#include <cstdio>
#include <string>
#include <vector>
#include <cmath>
#include <climits>
using namespace std;

int n, k, a[60001];
long ans = 0, sum = 0;


int main()
{
    cin >> n;
    for(int i = 0; i < n; i++)
    	cin >> a[i];
    for(int i = 0; i < n; i++){
    	sum += a[i];
    	if(sum < 0) sum = 0;
    	if(sum > ans) ans = sum;
    }
    cout << ans << endl;
    return 0;
}
    
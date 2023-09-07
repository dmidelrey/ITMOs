#include <iostream>
#include <cstdio>
#include <string>
#include <vector>
#include <cmath>
#include <climits>
using namespace std;

int n, k, sum = 0, a[21];
bool f[2100000];
long ans;


int main()
{
    cin >> n;
    for(int i = 0; i < n; i++){
    	cin >> a[i];
    	sum += a[i];
    }
    f[0] = true;
    ans = LONG_MAX;
    for(int i = 0; i < n; i++)
    	for(int j = sum; j >= 0; j--) if(f[j]) {
    		f[a[i] + j] = true;
    		if (abs((sum - a[i] - j) - a[i] - j) < ans) 
    			ans = abs((sum - a[i] - j) - a[i] - j);
    	}	
    cout << ans << endl;	
    return 0;
}
    

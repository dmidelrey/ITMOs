#include <iostream>
#include <cstdio>
#include <string>
#include <vector>
#include <cmath>
using namespace std;

int t, n, k, sum, ans, x, z;

int main()
{
    cin >> t;
    for(int i = 0; i < t; i++){
    	ans = sum = 0;
    	cin >> n >> k;
    	x = n / k;
    	z = n % k;
    	sum = n;
    	for(int j = 0; j < k - z; j++){
    		sum -= x;
    		ans += x * sum; 
    	}

    	for(int j = 0; j < z; j++){
    		sum -= x + 1;
    		ans += (x + 1) * sum; 
    	}
    	cout << ans <<  endl;

    }
    return 0;
}
    

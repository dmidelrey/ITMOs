#include <iostream>
#include <cstdio>
#include <string>
#include <vector>
#include <cmath>
using namespace std;

int t, n, k, xS, yS, xx, yy, sum, num=1, a[666][666], x, z=0;


void fill(int num, int x1, int y1, int x2, int y2){
	for(int i = x1; i <= x2; i++)
		for(int j = y1; j <= y2; j++)if(a[i][j]==0)a[i][j] = num;
}

void rec(int x1, int y1, int x2, int y2){
	int rec_num, xm = (x2 - x1 + 1)/2, ym = (y2 - y1 + 1)/2;
	
	if(xm == 1){
		fill(num++, x1, y1, x2, y2);
		return;
	}
	if(xS >= x1 + xm){
		if(yS >= y1 + ym){
			rec_num = 1;
			rec(x1 + xm, y1 + ym, x2, y2);
		} else {
			rec_num = 2;
			rec(x1 + xm, y1, x2, y1 + ym - 1);
		}
	} else {
		if(yS >= y1 + ym){
			rec_num = 3;
			rec(x1, y1 + ym, x1 + xm - 1, y2);
		}
		else {
			rec_num = 4;
			rec(x1, y1, x1 + xm - 1, y1 + ym - 1);
		}
	}
	fill(num++, x1 + xm - 1, y1 + ym -1, x1 + xm, y1 + ym);
	if(rec_num != 1){
		xS = x1 + xm;
		yS = y1 + ym;
		rec(x1 + xm, y1 + ym, x2, y2);
	}
	if(rec_num != 2){
		xS = x1 + xm;
		yS = y1 + ym - 1;
		rec(x1 + xm, y1, x2, y1 + ym - 1);
	}
	if(rec_num != 3){
		xS = x1 + xm - 1;
		yS = y1 + ym;
		rec(x1, y1 + ym, x1 + xm - 1, y2);
	}
	if(rec_num != 4){
		xS = x1 + xm - 1;
		yS = y1 + ym - 1;
		rec(x1, y1, x1 + xm - 1, y1 + ym - 1);
	}
	
}


int main()
{
    cin >> n;
    cin >> xS >> yS;
    --xS, --yS;
    xx = xS, yy = yS;
    t = n;
    n = pow(2, n);
    a[xS][yS] = -1;
    k = pow(2, 2*t);
    k = (k - 1) / 3;
    rec(0, 0, n - 1, n - 1);

    a[xx][yy] = 0;
    for(int i = 0; i < n; i++){
		for(int j = 0; j < n - 1; j++)cout << a[i][j] << " ";
		cout << a[i][n-1] << "\n";
	}

   	return 0;
}
    

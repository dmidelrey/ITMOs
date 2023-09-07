
#include <iostream>
#include <algorithm>

using namespace std;

int main()
{
	int ccount;
	cin >> ccount;

	for (int i = 0; i < ccount; ++i)	{
		int n,  k;
		cin >> n >> k;

		int gsize = n / k;	// размер обыкновенной группы
		int remainder = n % k;	// остаток - количество расширенных групп
		int fullgs = gsize + 1;

		int ans = ((n - fullgs * remainder)*(n - gsize) + (remainder * fullgs)*(n - gsize - 1)) / 2;

		cout << ans << endl;
	}

	return 0;
}

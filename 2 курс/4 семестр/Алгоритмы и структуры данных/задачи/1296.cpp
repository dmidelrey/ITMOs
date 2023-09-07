
#include <iostream>
#include <algorithm>

using namespace std;

int gyper(int* A, int N);

int main() {
	int N;
	cin >> N;

	int* A = new int[N];
	for (int i = 0; i < N; ++i)
		cin >> A[i];

	cout << gyper(A, N);

	return 0;
}

int gyper(int* A, int N) {

	int sum = 0, result = 0;
	for (int i = 0; i < N; ++i) {
		sum = max(0, sum + A[i]);
		result = max(sum, result);
	}

	return result;
}

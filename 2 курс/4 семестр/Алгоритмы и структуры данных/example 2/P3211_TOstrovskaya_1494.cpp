#include <iostream>

using namespace std;

class BallsStack {
public:
	BallsStack(size_t const size) {
		buffer = new int[size];
		bufferSize = size;
		stackPointer = -1;
	}

	void push(int const value) {
		buffer[++stackPointer] = value;
	}

	int pop() {
		return stackPointer != -1 ? buffer[stackPointer--] : -1;
	}

	int peek() {
		return buffer[stackPointer];
	}

	bool isEmpty() {
		return stackPointer == -1;
	}

	void print() {
		if (stackPointer == -1) return;
		for (int i = 0; i <= stackPointer; i++) {
			cout << buffer[i] << " ";
		}
	}

private:
	int stackPointer;
	int* buffer;
	size_t bufferSize;
};

int main() {
	size_t ballsCount;
	cin >> ballsCount;

	BallsStack stack (ballsCount);

	int pivotElement = 0;
	cin >> pivotElement;

	for (int j = 1; j < pivotElement; j++) {
		stack.push(j);
	}

	for (size_t i = 1; i < ballsCount; i++) {
		int ballNumber;
		cin >> ballNumber;

		if (ballNumber > pivotElement) {
			for (int j = pivotElement + 1; j < ballNumber; j++) {
				stack.push(j);
			}
			pivotElement = ballNumber;
			continue;
		}

		else if (stack.pop() != ballNumber) {
			puts("Cheater");
			return 0;
		}
	}

	puts("Not a proof");
	return 0;
}

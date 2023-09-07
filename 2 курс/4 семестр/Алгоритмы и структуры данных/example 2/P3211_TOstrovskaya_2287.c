/*	�������� ������ ���

	��������: ����������� �������� ������ ��� ������� �� ��������� �����:
���� a >= b > 0 � r - ������� �� ������� a �� b, ��
��� (a, b) = ��� (r, b). 

	������ ������� ������: ������������ ��� �� �� ������ �����:
���� a >= b > 0, �� (a mod b) <  a/2. ������, ������ ��� ��������� ���� �� �����
���� �� �����. ���������� ����� - ( log(a) + log(b) ), �� ������ ���� �����������
����������� ���������� �������� - �������. => �� �������� ���������� ����� �������, ���
T(n) = O (c*( log(a) + log(b) ) = O (log (ab) ) */



#include "stdio.h"

long long LCD(long long a, long long b);


int main() {	
	long long a, b;
	if (scanf("%lli %lli", &a, &b)) {
		printf("%lli", LCD(a, b));
	}	
}

long long LCD(long long a, long long b) {
	
	if (a == b) {
		return a;
	}

	if (a == 0) {
		return b;
	}

	if (b == 0) {
		return a;
	}

	if (a > b) {
		return LCD(a % b, b);
	}
	else {
		return LCD(b % a, a);
	}

}




		
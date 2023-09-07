#include <iostream>
#include <cstdio>
#include <string>
#include <vector>
#include <cmath>
#include <algorithm>
using namespace std;

int t, n, k, sum, x, z, iterations;
int a[8];
const int adjacent[8][3] = { 
    {1, 3, 4},
    {0, 2, 5},
    {1, 3, 6},
    {0, 2, 7},
    {0, 5, 7},
    {1, 4, 6},
    {2, 5, 7},
    {3, 4, 6}
};

const int diagonals[8][2] = {
    {0, 6}, {6, 0},
    {2, 4}, {4, 2},
    {3, 5}, {5, 3},
    {1, 7}, {7, 1}
};

string values = "ABCDEFGH";
string ans[1001];

int main()
{
    for(int i = 0; i < 8; i++){
        cin >> a[i];
        sum += a[i];
    }
    if(sum % 2 != 0){
        cout << "IMPOSSIBLE\n";
        return 0;
    }
    for(int i = 0; i < 7; i++)
        for(int j = 0; j < 3; j++)
            if(a[i] > 0 && a[adjacent[i][j]] > 0){
                x = min(a[i], a[adjacent[i][j]]);
                for(int z = 0; z < x; z++){
                    ans[iterations] = values[i];
                    ans[iterations] += values[adjacent[i][j]];
                    ans[iterations] += "-";
                    iterations++;
                }
                a[i] -= x;
                a[adjacent[i][j]] -= x;
            }

    for(int i = 0; i < 7; i++){
        int v1 = diagonals[i][0];
        int v2 = diagonals[i][1];

        if(!(a[v1] > 0 && a[v2] > 0)) continue;
        x = min(a[v1], a[v2]);

        for(int j = 0; j < 3; j++){
            int vertex = adjacent[v1][j];
            for(int j1 = 0; j1 < 3; j1++)
                for(int j2 = 0; j2 < 3; j2++)
                    if(adjacent[vertex][j1] == adjacent[diagonals[i][1]][j2]){
                        if(!(a[v1] > 0 && a[v2] > 0)) continue;
                        for(int z = 0; z < x; z++){
                            ans[iterations] = values[vertex];
                            ans[iterations] += values[adjacent[vertex][j1]];
                            ans[iterations] += "+";
                            iterations++;
                            ans[iterations] = values[v1];
                            ans[iterations] += values[vertex];
                            ans[iterations] += "-";
                            iterations++;
                            ans[iterations] = values[v2];
                            ans[iterations] += values[adjacent[vertex][j1]];
                            ans[iterations] += "-";
                            iterations++;
                        }
                        a[v1] -= x;
                        a[v2] -= x;
                    }
                }
    }
       
  

    for(int i = 0; i < 7; ++i) if (a[i] != 0){
        cout << "IMPOSSIBLE\n";
        return 0;
    }


    for(int i = 0; i < iterations; ++i)
        cout << ans[i] << endl;

    return 0;
}
    

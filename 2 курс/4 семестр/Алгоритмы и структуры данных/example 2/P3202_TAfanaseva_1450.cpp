#include <stdio.h>
#include <vector>
using namespace std;

struct node_t {
	vector<pair<int, int>> edges;
	int cost;
	bool first;
};
struct node_t node[500];

int n, s, f;
int max(int a, int b);

int main() {
	int m;
	scanf("%d %d", &n, &m);
	for (int i = 0; i < m; ++i) {
		int a, b, c;
		scanf("%d %d %d", &a, &b, &c);
		node[a].edges.push_back({b, c });
		node[a].first = false;
	}
	scanf("%d %d", &s, &f);
	node[s].first = true;
	for (int i = 0; i < n - 1; ++i) {
		for (int j = 1; j <= n; ++j) {
			for (int k = 0; k < node[j].edges.size(); ++k) {
				auto edge = node[j].edges[k];
				if (!node[edge.first].first && (node[j].first || node[j].cost != 0)) {
					node[edge.first].cost = max(node[j].cost + edge.second, node[edge.first].cost);
				}
			}
		}
	}
	if (node[f].cost == 0) {
		printf("No solution\n");
	} else {
		printf("%d", node[f].cost);
	}
	return 0;
}

int max(int a, int b) {
	return a > b ? a : b;
}
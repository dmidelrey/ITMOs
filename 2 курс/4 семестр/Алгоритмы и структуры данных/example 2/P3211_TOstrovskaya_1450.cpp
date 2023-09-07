#include <stdio.h>
#include <vector>
using namespace std;

struct node_t {
	vector <pair<int, int>> pipeline;	// contains destination and profit
	int profit;
	bool isFirst;
};

struct node_t nodes[500];

int n, s, f;

int main() {
	int m;
	scanf("%d %d", &n, &m);

	for (int i = 0; i < m; ++i) {
		int a, b, c;
		scanf("%d %d %d", &a, &b, &c);
		nodes[a].pipeline.push_back({ b, c });
		nodes[a].isFirst = false;
	}

	scanf("%d %d", &s, &f);
	nodes[s].isFirst = true;

	for (int i = 0; i < n - 1; ++i) {
		for (int j = 1; j <= n; ++j) {
			for (int k = 0; k < nodes[j].pipeline.size(); ++k) {
				auto currPipeline = nodes[j].pipeline[k];
				if (!nodes[currPipeline.first].isFirst && (nodes[j].isFirst || nodes[j].profit != 0)) {
					nodes[currPipeline.first].profit = fmax(nodes[j].profit + currPipeline.second, nodes[currPipeline.first].profit);
				}
			}
		}
	}

	if (nodes[f].profit == 0) {
		printf("No solution");
	} else {
		printf("%d", nodes[f].profit);
	}

	return 0;
}

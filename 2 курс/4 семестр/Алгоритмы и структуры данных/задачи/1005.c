#include<stdio.h>
#include<math.h>
#define MAX(a, b) ((a) > (b) ? (a) : (b))
#define MIN(a, b) ((a) < (b) ? (a) : (b))
int ar[20];
int v[3000000];
int main()
{
    int i,n,j, mi = 987654321, sum = 0;
    scanf("%d",&n);
    for(i = 0; i < n; i++)
    {
        scanf("%d",&ar[i]);
        sum += ar[i];
    }
    v[0] = 1;
    for(i = 0; i < n; i++)
        for( j = sum; j >= 0; j--)
            if(v[j])
                v[j+ar[i]] = 1;
    for(i = 0; i <= sum; i++)
        if(v[i])
            mi = MIN(mi, abs(sum-2*i));
    printf("%d",mi);
}

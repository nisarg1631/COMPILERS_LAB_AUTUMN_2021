#include <stdio.h>
#define MAXSIZE 100

void inst_sort(int num[],int n);
int bsearch(int num[],int n,int item);

int main()
{
    int n, a[MAXSIZE], item, i, loc;
    
    printf("Enter how many elements you want:\n");
    scanf("%d", &n);
    
    printf("Enter the %d elements:\n", n);
    for(i = 0; i < n; i++) scanf("%d", &a[i]);
    
    inst_sort(a,n);
    
    printf("\nEnter the item to search\n");
    scanf("%d", &item);
    loc=bsearch(a,n,item);
    
    if (item == a[loc]) {
        printf("\n%d found in position: %d\n", item, loc + 1);
    } else {
        printf("\nItem is not present in the list.\n");
    }
    
    return 0;
}

void inst_sort(int num[],int n)
{
    int i,j,k;
    
    for(j=1;j<n;j++) {
        k=num[j];
        for(i=j-1;i>=0 && k<num[i];i--) num[i+1]=num[i];
            num[i+1]=k;
    }
}

int bsearch(int a[],int n,int item)
{
    int mid, top, bottom;
    
    bottom = 1;
    top = n;
    do {
        mid = (bottom + top) / 2;
        if (item < a[mid])
            top = mid - 1;
        else if (item > a[mid])
            bottom = mid + 1;
    } while (item != a[mid] && bottom <= top);
    return mid;
}
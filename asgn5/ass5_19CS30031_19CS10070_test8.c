int add_loop(int* a,int n)
{
    int csum=0;
    int i;
	for (i=0;i<n;i++)
        csum=csum+a[i];
    return csum;
}
int main(){
    //minimum number of additional elements required to be added to the array to convert a given array (a) into an array whose average is 1
    int n;
	int a[n];
    int ans;
    int csum=add_loop(a,n);
	if(csum==n)
	{
		ans=0;
	}
	else if(csum>n)
	{
		ans=csum-n;
	}
	else{
        ans=1;
    }
}

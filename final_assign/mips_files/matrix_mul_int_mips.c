#include<stdio.h>    

int main(){  
	int n = 3;
	int a[n][n],b[n][n],mul[n][n];
	int row, col, i, j, k;    
 	row = n;
 	col = n;   

	for(i=0;i<row;i++)    
	{    
		for(j=0;j<col;j++)    
		{    
			a[i][j] = i+j;   
		}    
	}    

	for(i=0;i<row;i++)    
	{    
		for(j=0;j<col;j++)    
		{    
			b[i][j] = (i+10)*(j-10) ;    
		}    
	}    
    

	for(i=0;i<row;i++)    
	{    
		for(j=0;j<col;j++)    
		{    
			mul[i][j]=0;    
			for(k=0;k<col;k++)    
			{    
				mul[i][j]+=a[i][k]*b[k][j];    
			}    
		}    
	}    

	for(i=0;i<row;i++)    
	{    
		for(j=0;j<col;j++)    
		{    
			printf("%d\t",mul[i][j]);    
		}    
		printf("\n");    
	}    
return 0;  
}  

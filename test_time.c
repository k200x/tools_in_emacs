/* test time the code takes */
/* stdout: 0.000240 s       */

#include <stdio.h>
#include <time.h>

int main()
{
	int i;
	double start, end;

	start = (double)clock()/CLOCKS_PER_SEC;
	for (i=0; i<100000; ++i) {}
	end = (double)clock()/CLOCKS_PER_SEC; 
	       
	printf("%lf s\n", end - start);
	
	return 0;
}




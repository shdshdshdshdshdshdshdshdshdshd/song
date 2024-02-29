#include <stdio.h>

int main(void)
{
	int fahr;
	int celsius;
	
	fahr = 100;
	celsius = 5 / 9 * (fahr - 32);
	
	printf("fahr: %d ---> celsius: %d.%d\n", fahr , celsius);
	return 0;
}

#include <stdio.h>

int main(void)
{	
	printf("%d %d %d\n", 100, 0144, 0x64);
	printf("%d 0%o 0x%x\n", 100, 100, 100);

	printf("%d %d %d\n", 'A', 'a','0');
	
	//printf("%c %c %c\n", 65, 97, 48);
	printf("%c %c %c\n", 'A','a', '0');
	
	//printf("%c %c %c\n", 65, 66, 67);
	printf("%c %c %c\n", 'A','A'+1, 'A' +2);
	
	printf("%lldLL\n", 10000000000LL);
	
	printf("%f %fF\n", 3.141592, 2.718F);
	
	printf("%s\n", "hello, world");
	return 0;
}

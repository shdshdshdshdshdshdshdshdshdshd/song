#include <stdio.h>

int main(void)
{
	int width, height;
	scanf("%d", &width);
	scanf("%d",&height);

	double area = 1 /2 * width * height;

	printf("area:%0.1f\n", area);
	return 0;
}

#include "buffer.h"

int main(int argc, char const *argv[])
{
	draw_separator("START BUFFER");

	for(int i = 0; i < 50; i++)
	{
		printf("\n");
	}

	draw_separator("END BUFFER");

	return 0;
}

void draw_separator(char* message)
{

	int length = strlen(message) + 4;

	draw_line(length);
	printf("| %s |\n", message);
	draw_line(length);
}

void draw_line(int length)
{
	for(int i = 0; i < length; i++)
	{
		printf("=");
	}
	printf("\n");
}
#include "buffer.h"



int main(int argc, char const *argv[])
{

	int linecount = 50;

	if(argc > 1)
	{
		linecount = atoi(argv[1]);
		if(linecount < 1)
		{
			print_usage();
		}
	}


	draw_separator("START BUFFER", true);

	for(int i = 0; i < linecount; i++)
	{
		printf("\n");
	}

	draw_separator("END BUFFER", false);

	return 0;
}

void draw_separator(char* message, bool top)
{

	int length = strlen(message) + 4;
	if(top)
	{
		draw_line(length);
	}
	printf("  %s  \n", message);
	if(!top)
	{
		draw_line(length);
	}
	
}

void draw_line(int length)
{
	for(int i = 0; i < length; i++)
	{
		printf("=");
	}
	printf("\n");
}

void print_usage()
{
	printf("%s\n", "Usage: buffer [linecount:int]");
	exit(0);
}
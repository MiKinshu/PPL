%{
	#include<stdio.h>
	#include<string.h>
	#include<stdlib.h>
	void check(char *);
%}


%%

[a-zA-Z]+  {check(yytext);}

%%

int main()
{
	yylex();
	return 0;
}


void check(char* str)
{
	FILE* fp;
	char temp[30];

	fp=fopen("input.txt","r");
	while((fscanf(fp,"%s",temp))!=EOF)
	{
		if(!(strcmp(temp,str)))
		{
			printf("FOUND\n");
			return;
		}
	}
	printf("NOT FOUND");
	return;
}
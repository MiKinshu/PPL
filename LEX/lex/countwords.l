%{

#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int count=0;

%}


%%

([a-zA-Z0-9])+  {count++;}
[ ] {}
"\n" {return 0;}

%%

int yywrap()
{}

int main()
{
	yylex();
	printf("Number of words is %d\n",count);
	return 0;
}
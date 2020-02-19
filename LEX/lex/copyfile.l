%{
	#include<stdio.h>
	#include<stdlib.h>
	#include<string.h>
	char line[100];
%}

%% 

['\n'] {fprintf(yyout,"%s\n",line);}
(.*)   {strcpy(line,yytext);}

%%

int yywrap()
{
	return 1;
}

int main()
{
	extern FILE *yyin, *yyout;
	yyin=fopen("input.txt","r");

	yyout=fopen("output.txt","w");
	yylex();
	
}
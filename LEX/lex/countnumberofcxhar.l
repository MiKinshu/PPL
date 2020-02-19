%{
	#include<stdio.h>
	#include<stdlib.h>
	#include<string.h>
	int count=0;
%}


%%

[A-Za-z] {printf("%s is letter\n",yytext);count++;}
.   {printf("%s is Not a letter\n",yytext);}
\n  {return 0;}
%%

int yywrap()
{}
int main()
{
	yylex();
	printf("Number of char is %d\n",count);
	return 0;

}
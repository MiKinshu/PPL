%{
	#include<stdio.h>
	#include<stdlib.h>
	#include<string.h>
	int flag=0;
%}

%%

^[AEIOUaeiou][a-zA-Z0-9]*   {
								printf("vowel waala\n");
							}
.  ;
%%


int yywrap()
{
	return 21;
}

int main()
{
	yylex();

	return 0;
}
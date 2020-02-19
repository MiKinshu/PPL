%{

	#include<stdio.h>
	#include<stdlib.h>
	#include<string.h>
	int len=0;
	int counter=0;
%}


%%

[a-zA-Z]+ {len=strlen(yytext);
			if((len>5)&&(len<10))
			{counter++;}}
[ ]         {}
"\n"  {return 0;}
%%

int yywrap()
{

}

int main()
{
	printf("enter the string:\n");
	yylex();
	printf("\n %d \n",counter);
	return 0;
}
%{

#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int pos=0;
int ne=0;
int pof=0;
int nef=0;

%}

digit [0-9]

%%

\+?{digit}+     {pos++;}
-{digit}+       {ne++;}
\+?{digit}*\.{digit}+  {pof++;}
\-{digit}*\.{digit}+   {nef++;}
.  {}
"\n"  {return 0;}
%%

int yywrap()
{

}

int main()
{
	yylex();
	printf("number of p n pf nf are %d %d %d %d\n",pos,ne,pof,nef);
	return 0;
}
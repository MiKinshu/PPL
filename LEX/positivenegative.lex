%{
 int positive=0;
 int negative=0;
%}
%%
[-][0-9]+ {printf("%s negative number\n",yytext); negative++;}
[0-9]+ {printf("%s positive number\n",yytext); positive++;}
[a-zA-Z] {return 0;}
%%
int yywrap(){}

int main()
{
	yylex();
	printf("Count of positive and negative numbers is %d %d\n",positive,negative);
}

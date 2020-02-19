%{
	
%}
%%
[-][0-9]*|[0-9]* {printf("It is a number\n");}
.* {printf("Not a number\n");}

\n {return 0;}
%%
int yywrap(){}
int main()
{
	yylex();
	return 0;
}

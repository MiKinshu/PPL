%{
	int flag=0;
%}
%%
[a-z . 0-9]+@[a-z]+".com"|".in" {flag=1;}
\n {return 0;}
%%
int yywrap(){}
int main()
{
	yylex();
	if(flag==1)
	printf("Valid Email\n");
	else
	printf("Invalid Email\n");
}

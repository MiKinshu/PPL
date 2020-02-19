%{
	
%}
%%
[6-9][0-9]{9} {printf("Valid Mobile number\n");}
.+ {printf("mobile number invalid\n");}
%%
int yywrap(){}
int main()
{
	yylex();
	return 0;
}

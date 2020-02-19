%{

	int max=-1000;
%}
%%
[a-zA-Z]+ {if(yyleng>max) 
           max=yyleng;
           }
\n {return 0;}
%%
int yywrap(){}
int main()
{
	yylex();
	printf("%d\n",max);
	return 0;
}

%{
    int count=0;
    char word[]="amritansh";
%}
%%
[a-zA-Z]+ {if(strcmp(yytext,word)==0)
             count++;
          }
\n {return 0;}
%%
int yywrap(){}
int main()
{
	yylex();
	printf("%d\n",count);
	return 0;
}

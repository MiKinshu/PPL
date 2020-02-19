%{
  int x;
%}
%%
[0-9]+ {x=atoi(yytext);
          if(x%2==0)
          printf("Even\n");
          else
          printf("Odd\n");
       }
%%
int yywrap(){}
int main()
{
	yylex();
}       

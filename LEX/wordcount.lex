%{
  int count=0;
%}
%%
([a-zA-Z]*) {count++;}
\n {return 0;}
%%
int yywrap(){}

int main()
{
   yylex();
   printf("Number of words %d\n",count);	
}

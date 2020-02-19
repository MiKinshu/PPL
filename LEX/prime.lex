%{
  int c;
  int j;
  int flag=0;
%}
%%
[0-9]+ {
          c=atoi(yytext);
          if(c==0)
          printf("Not prime\n");
          else if(c==1)
          printf("Not prime\n");
          else if(c==2)
          printf("Prime\n");
          else
          {
             for(j=2;j<c;j++)
             {
                if(c%j==0)
                flag=1;
             }
             if(flag==0)
             printf("Prime\n");
             else
             printf("Not prime\n");
          }
          flag=0;
       }
%%
int yywrap(){}
int main()
{
	yylex();
    return 0;
}       

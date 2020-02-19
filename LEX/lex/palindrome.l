%{
	int i,j,flag;
%}

%%

[a-zA-Z0-9]*   {
	for(i=0,j=yyleng-1;i<=j;i++,j--)
	{
		if(yytext[i]==yytext[j])
		{
			flag=0;
		}
		else
		{
			flag=1;
			break;
		}
	}
	if(flag==0)
	{
		printf("palindrome\n");
	}
	else
	{
		printf("not a palindrome\n");
	}
}

%%


int yywrap(){return 1;}

int main()
{
	printf("Enter string");
	yylex();
	return 0;
}
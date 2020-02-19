%{
   int vowel=0;
   int conso=0;	
%}
%%
[aeiouAEIOU] {vowel++;}
[a-zA-Z]   {conso++;}
\n  {return 0;}
%%
int yywrap(){}
int main()
{
	yylex();
	printf("Number of vowels are %d and consonents are %d\n",vowel,conso);
}

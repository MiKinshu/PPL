% 
{ 
	#include<stdio.h>
	#include<stdlib.h>
	#include<string.h>
  int flag = 0;
%} 
%%

[a-z0-9_]+@[a-z]+".com" | ".in"  {flag = 1;}


%% 


int yywrap()
{
	return 1;
}
int main() { 
  yylex(); 
  if (flag == 1) 
    printf("Accepted"); 
  else
    printf("Not Accepted");
  return 0; 
} 
%{
	#include<stdio.h>
	#include<stdlib.h>
	#include<string.h>
}%
start \/\* 
end  \*\/ 
%% 
\/\/(.*) {;} 
{start}.*{end} {;} 
%% 
int yywrap()
{
	return 0;
}
int main(int k,char **argcv) 
{ 
yyin=fopen(argcv[1],"r"); 
yyout=fopen("out.c","w"); 
yylex(); 
return 0; 
} 
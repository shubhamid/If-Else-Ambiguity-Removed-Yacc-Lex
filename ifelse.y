%{
	#include<stdio.h>
	extern FILE *yyin;
%}

%token IF ELSE PRINTF LP RP
%nonassoc IFX
%nonassoc ELSE

%%
stmt:
       	IF expr stmt %prec IFX
	|IF expr stmt ELSE stmt
	|
	;
expr: LP RP
	;

%%

int main(int argc, char *argv[])
{
	yyin=fopen(argv[1],"r");
	if(!yyparse())
		printf("parsing complete \n");
	fclose(yyin);
	return 0;
}
yyerror()
{
	printf("Invalid\n");
}

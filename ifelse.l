%{
	#include"y.tab.h"
%}
%%
[ \n\t]		{}
[{}]		{}
"if"		{return IF;}
"else"		{return ELSE;}
"printf"	{return PRINTF;}
"("		{return LP;}
")"		{return RP;}
.		{return yytext[0];}
%%

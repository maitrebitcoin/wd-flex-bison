%option noyywrap

%{
// code d'init 2
valeur_courante est un réél
%}

%%

[ \t]		; // ignorer les espaces
[0-9]+\.[0-9]+ 	{valeur_courante = yytext; return T_FLOAT;}
[0-9]+		    {valeur_courante = yytext; return T_INT;}
\n		        {return T_NEWLINE;}
"+"		        {return T_PLUS;}
"-"		        {return T_MINUS;}
"*"		        {return T_MULTIPLY;}
"/"		        {return T_DIVIDE;}
"("		        {return T_LEFT;}
")"		        {return T_RIGHT;}

%%
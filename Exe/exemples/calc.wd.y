%{
// code WL pour déclarer des membres ici
%}

%token T_INT
%token T_FLOAT
%token T_PLUS T_MINUS T_MULTIPLY T_DIVIDE T_LEFT T_RIGHT

%start calcul

%%

calcul:
	   | mixed_expression						{ trace("résultat = " + $1) }
;

mixed_expression: T_FLOAT                 		 { $$ = $1 }
	  | mixed_expression T_PLUS mixed_expression	 { $$ = $1 + $3 }
	  | mixed_expression T_MINUS mixed_expression	 { $$ = $1 - $3 }
	  | mixed_expression T_MULTIPLY mixed_expression { $$ = $1 * $3 }
	  | mixed_expression T_DIVIDE mixed_expression	 { $$ = $1 / $3 }
	  | T_LEFT mixed_expression T_RIGHT		 { $$ = $2 }
	  | expression T_PLUS mixed_expression	 	 { $$ = $1 + $3 }
	  | expression T_MINUS mixed_expression	 	 { $$ = $1 - $3 }
	  | expression T_MULTIPLY mixed_expression 	 { $$ = $1 * $3 }
	  | expression T_DIVIDE mixed_expression	 { $$ = $1 / $3 }
	  | mixed_expression T_PLUS expression	 	 { $$ = $1 + $3 }
	  | mixed_expression T_MINUS expression	 	 { $$ = $1 - $3 }
	  | mixed_expression T_MULTIPLY expression 	 { $$ = $1 * $3 }
	  | mixed_expression T_DIVIDE expression	 { $$ = $1 / $3 }
	  | expression T_DIVIDE expression		 { $$ = $1 / $3 }
;

expression: T_INT				{ $$ = $1 }
	  | expression T_PLUS expression	{ $$ = $1 + $3 }
	  | expression T_MINUS expression	{ $$ = $1 - $3 }
	  | expression T_MULTIPLY expression	{ $$ = $1 * $3 }
	  | T_LEFT expression T_RIGHT		{ $$ = $2; }
;

%%

// code WL pour le code d'init ici

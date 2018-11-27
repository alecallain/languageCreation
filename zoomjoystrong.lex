%{
	#include <stdio.h>
	#include <stdlib.h>
	#include <unistd.h>
	#include "zoomjoystrong.h"
	#include "zoomjoystrong.tab.h"
%}

%%

END|end			return END;
;			return END_STATEMENT;
POINT|point		return POINT;
LINE|line		return LINE;
CIRCLE|circle		return CIRCLE;
RECTANGLE|rectangle 	return RECTANGLE;
SET_COLOR|set_color	return SET_COLOR;
[0-9]+			return INT;
[0-9]+"."[0.9]+		return FLOAT;
[ |\t|\n]+		;
.			{printf("Lexing error\n");}

%%

/**
* This file handles the tokens from
* the user
* 
* @author Alec Allain
* @version 11/25/18
*/

/** Main method */
int main (int argc, char** argv) {
	yylex();
	return 0;
}

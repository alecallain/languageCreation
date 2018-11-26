%{
	#include <stdio.h>
	#include <stdlib.h>
	#include <unistd.h>
	#include "zoomjoystrong.h"
	#include "zoomjoystrong.tab.h"
%}

%%

END			return END;
;			return END_STATEMENT;
POINT			return POINT;
LINE			return LINE;
CIRCLE			return CIRCLE;
RECTANGLE 		return RECTANGLE;
SET_COLOR		return SET_COLOR;
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

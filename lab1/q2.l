%{
/* Lex code for recognizing keywords, identifiers, and numeric data in C language */
%}

DIGIT   [0-9]
LETTER  [a-zA-Z]

%%


auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|const|float|short|unsigned|continue|for|signed|void|default|goto|sizeof|volatile|do|if|static|while   { printf("\nKEYWORD: %s\n", yytext); }


{LETTER}({LETTER}|{DIGIT})*              { 
                                            if (strlen(yytext) <= 32) {
                                                printf("\nIDENTIFIER: %s\n", yytext);
                                            } else {
                                                printf("\nError: Identifier too lengthy\n");
                                            }
                                         }


{DIGIT}+(\.{DIGIT}+)?                    { printf("\nNUMERIC: %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}

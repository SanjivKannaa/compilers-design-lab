%{
/* Lex code for recognizing operators in C language */
%}

%%

\+                                      { printf("addition operator: +\n"); }
\-                                      { printf("subtraction operator: -\n"); }
\*                                      { printf("multiplication operator: *\n"); }
\/                                      { printf("division operator: /\n"); }
\%                                      { printf("modulus operator: %%\n"); }
\=                                      { printf("assignment operator: =\n"); }
\=\=                                    { printf("equals operator: ==\n"); }
\!\=                                    { printf("not equals operator: !=\n"); }
\<                                      { printf("lesser than operator: <\n"); }
\>                                      { printf("greater than operator: >\n"); }
\&\&                                    { printf("and operator: &&\n"); }
\|\|                                    { printf("or operator: ||\n"); }

%%

int main() {
    yylex();
    return 0;
}

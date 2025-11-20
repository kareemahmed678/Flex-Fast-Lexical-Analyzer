%{
#include <stdio.h>
#include <stdlib.h>
extern int yylex();
extern FILE* yyin;
%}

letter [a-zA-Z_]
digit [0-9]
id {letter}({letter}|{digit})*
digits {digit}+
boolean boolean
int int
float float
num {digit}+|{digit}+\.{digits}([eE][+-]?{digits})?
relop ==|!=|>|>=|<|<=
assign =
addop [\+|-]
mulop [\*|/]
sep [\;\,\(\)\{\}\[\]]
ws [ \t\r\n]+

%%
{boolean} { printf("boolean: %s\n", yytext); }
{int} { printf("int: %s\n", yytext); }
{float} { printf("float: %s\n", yytext); }
{num} { printf("num: %s\n", yytext); }
{relop} { printf("relop: %s\n", yytext); }
{assign} { printf("assign: %s\n", yytext); }
{id} { printf("id: %s\n", yytext); }
{addop} { printf("addop: %s\n", yytext); }
{mulop} { printf("mulop: %s\n", yytext); }
{sep} { printf("separator: %s\n", yytext); }
{ws} { /* ignore whitespace */ }
. { printf("Error: invalid input '%s'\n", yytext); }
%%

int yywrap(void) {
    return 1;
}

int main(int argc, char *argv[]) {
    if (argc > 1) {
        yyin = fopen(argv[1], "r");
        if (yyin == NULL) {
            perror(argv[1]);
            return 1;
        }
    }
    yylex();  // Start lexical analysis
    return 0;
}

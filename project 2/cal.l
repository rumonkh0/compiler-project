%option noyywrap
%option yylineno


%{
#include "y.tab.h"
%}


digit [0-9]
number ({digit}+)
letter [A-Za-z]
us [_]
id ({us}|{letter})({letter}|{us}|{digit})*



%%
[ \t\n]             ; // Skip whitespace
"//"(.*)            ;
"int"               { return INT; }
"float"             { return FLOAT; }
"char"              { return CHAR; }
"double"            { return DOUBLE; }
"bool"              { return BOOL; }
"for"               { return FOR; }
"if"                { return IF; }
"else"              { return ELSE; }
"main"              { return MAIN; }
"return"            { return RETURN; }
"true"              { return TRU; }
"false"             { return FLS; }
"("                 { return LPAREN; }
")"                 { return RPAREN; }
"{"                 { return LBRACE; }
"}"                 { return RBRACE; }
"<="                { return GE; }
"<"                 { return GT; }
">="                { return LE; }
">"                 { return LT; }
"++"                { return INC; }
"--"                { return DEC; }
";"                 { return SEMICOLON; }
","                 { return COMMA; }
"=="                { return EQ; }
"="                 { return ASSIGN; }
"+"                 { return(ADD); }
"-"                 { return(SUB); }
"*"                 { return(MUL); }
"/"                 { return(DIV); }
"%"                 { return(MOD); }
{number}            {yylval = atoi(yytext);  return(INT_VALUE);}
{id}                { return(IDENTIFIER);}
.                   ;
%%

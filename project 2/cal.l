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
"#include <stdio.h>"  { return HEAD; }
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
"scanf"             { return SCANF; }
"true"              { return TRU; }
"false"             { return FLS; }
"%d"                { return FORMAT_SPECIFIER; }
"("                 { return LPAREN; }
"&"                 { return AMPERSAND; }
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
"printf"            { return PRINT; }
\".*\"          	{return STRING;}
{number}            {yylval = atoi(yytext);  return(INT_VALUE);}
{id}                {return(IDENTIFIER);}
.                   ;
%%

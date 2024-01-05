%{
#include <stdio.h>
#include <stdlib.h>
extern int yylex();
extern char* yytext;
extern int yylineno;
void yyerror(const char *err);
%}

%token INT FOR RETURN LPAREN RPAREN LBRACE RBRACE SEMICOLON ASSIGN INT_VALUE IDENTIFIER FLOAT CHAR DOUBLE ADD SUB MUL DIV MOD GT GE LT LE INC DEC MAIN COMMA BOOL IF ELSE TRU FLS EQ PRINT STRING HEAD FORMAT_SPECIFIER AMPERSAND SCANF
%start program
%left ADD SUB
%left MUL DIV
%%

program: HEAD function_declarations main
        | HEAD  main
        ;

main: data_type MAIN LPAREN parameter_list_opt RPAREN compound_statement { printf("Main Function declaration\n"); }

function_declarations : function_declaration 
                      | function_declarations function_declaration
                      ;

function_declaration : data_type IDENTIFIER LPAREN parameter_list_opt RPAREN compound_statement { printf("Function declaration\n"); }
                     ;

parameter_list_opt   : parameter_list
                     | 
                     ;

parameter_list       : parameter
                     | parameter_list COMMA parameter
                     ;

parameter            : data_type IDENTIFIER
                     ;

compound_statement   : LBRACE statements RBRACE 
                     ;

statements : statement
           | statements statement
           ;

statement : declaration SEMICOLON  { printf("Declaration\n"); }
          | assignment SEMICOLON  { printf("Declaration with assignment\n"); }
          | loop
          | if_statement
          | if_else_statement
          | if_elseif_else_statement
          | PRINT LPAREN STRING RPAREN SEMICOLON 
          | function_call SEMICOLON
          | RETURN expression SEMICOLON
          | SCANF LPAREN STRING COMMA AMPERSAND IDENTIFIER RPAREN SEMICOLON
          | PRINT LPAREN STRING COMMA IDENTIFIER RPAREN SEMICOLON
          ;

if_statement : IF LPAREN expression RPAREN compound_statement;

if_else_statement : IF LPAREN expression RPAREN compound_statement ELSE compound_statement;

if_elseif_else_statement : IF LPAREN expression RPAREN  compound_statement ELSE IF LPAREN expression RPAREN compound_statement ELSE compound_statement;

declaration : data_type IDENTIFIER
            ;

loop : FOR LPAREN assignment SEMICOLON expression SEMICOLON assignment RPAREN LBRACE statements RBRACE
     ;

assignment : IDENTIFIER ASSIGN expression
           | counter IDENTIFIER
           | IDENTIFIER counter
           | data_type IDENTIFIER ASSIGN expression
           | data_type IDENTIFIER ASSIGN function_call
           ;

function_call : IDENTIFIER LPAREN expression RPAREN
              ;

expression : INT_VALUE
           | IDENTIFIER
           | expression op expression
           | LPAREN expression RPAREN
           | function_call
           | TRU
           | FLS
           ;

data_type            : INT
                     | FLOAT
                     | CHAR
                     | DOUBLE
                     | BOOL
                     ;

op  : ADD
    | SUB
    | MUL
    | DIV 
    | GT 
    | GE 
    | LT 
    | LE 
    | MOD 
    | EQ
    ;

counter: INC | DEC

%%

void yyerror(const char *err) {
    fprintf(stderr, "Parser error: %s at line %d\n", err, yylineno);
}

int main() {
    yyparse();
    printf("Parsing Successful FOR THIS FUNCTION \n");
    return 0;
}

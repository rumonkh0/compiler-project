%{
#include <stdio.h>
#include <stdlib.h>
#include<time.h>
extern int yylex();
extern char* yytext;
extern int yylineno;
void yyerror(const char *s);
%}

%token INT FOR RETURN LPAREN RPAREN LBRACE RBRACE SEMICOLON ASSIGN INT_VALUE IDENTIFIER FLOAT CHAR DOUBLE ADD SUB MUL DIV MOD GT GE LT LE INC DEC MAIN COMMA
%start program
%left ADD SUB
%left MUL DIV
%%

program: function_declarations main;

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

/*statement_list     :  Statements 
                     ;*/


/*program : statements
        ;*/

statements : statement
           | statements statement |
           ;

statement : declaration SEMICOLON  { printf("Declaration\n"); }
          | assignment SEMICOLON  { printf("Declaration with assignment\n"); }
          | loop
          | function_call SEMICOLON
          | RETURN expression SEMICOLON
          ;

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
           ;

data_type            : INT
                     | FLOAT
                     | CHAR
                     | DOUBLE
                     ;

op  : ADD
    | SUB
    | MUL
    | DIV | GT | GE | LT | LE
    ;

counter: INC | DEC

%%

void yyerror(const char *s) {
    time_t tm;
    time(&tm);
    fprintf(stderr, "Parser error: %s at line %d\n", s, yylineno);
}

int main() {
    time_t tm;
    time(&tm);
    yyparse();
    printf("Parsing Successful FOR THIS FUNCTION %s\n", ctime(&tm));
    return 0;
}

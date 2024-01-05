/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    INT = 258,                     /* INT  */
    FOR = 259,                     /* FOR  */
    RETURN = 260,                  /* RETURN  */
    LPAREN = 261,                  /* LPAREN  */
    RPAREN = 262,                  /* RPAREN  */
    LBRACE = 263,                  /* LBRACE  */
    RBRACE = 264,                  /* RBRACE  */
    SEMICOLON = 265,               /* SEMICOLON  */
    ASSIGN = 266,                  /* ASSIGN  */
    INT_VALUE = 267,               /* INT_VALUE  */
    IDENTIFIER = 268,              /* IDENTIFIER  */
    FLOAT = 269,                   /* FLOAT  */
    CHAR = 270,                    /* CHAR  */
    DOUBLE = 271,                  /* DOUBLE  */
    ADD = 272,                     /* ADD  */
    SUB = 273,                     /* SUB  */
    MUL = 274,                     /* MUL  */
    DIV = 275,                     /* DIV  */
    MOD = 276,                     /* MOD  */
    GT = 277,                      /* GT  */
    GE = 278,                      /* GE  */
    LT = 279,                      /* LT  */
    LE = 280,                      /* LE  */
    INC = 281,                     /* INC  */
    DEC = 282,                     /* DEC  */
    MAIN = 283,                    /* MAIN  */
    COMMA = 284,                   /* COMMA  */
    BOOL = 285,                    /* BOOL  */
    IF = 286,                      /* IF  */
    ELSE = 287,                    /* ELSE  */
    TRU = 288,                     /* TRU  */
    FLS = 289,                     /* FLS  */
    EQ = 290,                      /* EQ  */
    PRINT = 291,                   /* PRINT  */
    STRING = 292,                  /* STRING  */
    HEAD = 293,                    /* HEAD  */
    FORMAT_SPECIFIER = 294,        /* FORMAT_SPECIFIER  */
    AMPERSAND = 295,               /* AMPERSAND  */
    SCANF = 296                    /* SCANF  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define INT 258
#define FOR 259
#define RETURN 260
#define LPAREN 261
#define RPAREN 262
#define LBRACE 263
#define RBRACE 264
#define SEMICOLON 265
#define ASSIGN 266
#define INT_VALUE 267
#define IDENTIFIER 268
#define FLOAT 269
#define CHAR 270
#define DOUBLE 271
#define ADD 272
#define SUB 273
#define MUL 274
#define DIV 275
#define MOD 276
#define GT 277
#define GE 278
#define LT 279
#define LE 280
#define INC 281
#define DEC 282
#define MAIN 283
#define COMMA 284
#define BOOL 285
#define IF 286
#define ELSE 287
#define TRU 288
#define FLS 289
#define EQ 290
#define PRINT 291
#define STRING 292
#define HEAD 293
#define FORMAT_SPECIFIER 294
#define AMPERSAND 295
#define SCANF 296

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_H_INCLUDED  */

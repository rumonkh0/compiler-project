#!/bin/bash
yacc -d cal.y
lex cal.l
gcc y.tab.c lex.yy.c
./a.out <input.txt> output.txt
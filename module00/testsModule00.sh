#!/bin/bash

# COLORS #
RED='\033[00;31m'
CYAN='\033[00;36m'
RESET='\033[0m'
# Background #
BRED='\033[1;41m'
BGREEN='\033[1;42m'

printf "\n\t${CYAN}TESTS MODULE PYTHON 00\n\n"
printf "EX01\n"
printf "${RESET}"
printf "TEST:\t'python3 exec.py 'Hello World!' | cat -e'\t"
echo "!DLROw OLLEh$" > ctrl
python3 ex01/exec.py 'Hello World!' | cat -e > output
if diff -q ctrl output > /dev/null
then
    printf "${BGREEN}PASS${RESET}\n"
else
    printf "${BRED}FAIL${RESET}\n"
fi
rm ctrl output

printf "TEST:\t'python3 exec.py 'Hello' 'my Friend' | cat -e'\t"
echo "DNEIRf YM OLLEh$" > ctrl
python3 ex01/exec.py 'Hello' 'my Friend' | cat -e > output
if diff -q ctrl output > /dev/null
then
    printf "${BGREEN}PASS${RESET}\n"
else
    printf "${BRED}FAIL${RESET}\n"
fi
rm ctrl output


printf "${CYAN}EX02\n"
printf "${RESET}"
printf "TEST:\t'python3 whois.py 12'\t\t\t\t"
echo "I'm Even." > ctrl
python3 ex02/whois.py 12 > output
if diff -q ctrl output > /dev/null
then
    printf "${BGREEN}PASS${RESET}\n"
else
    printf "${BRED}FAIL${RESET}\n"
fi
rm ctrl output
printf "TEST:\t'python3 whois.py 3'\t\t\t\t"
echo "I'm Odd." > ctrl
python3 ex02/whois.py 3 > output
if diff -q ctrl output > /dev/null
then
    printf "${BGREEN}PASS${RESET}\n"
else
    printf "${BRED}FAIL${RESET}\n"
fi
rm ctrl output
printf "TEST:\t'python3 whois.py 0'\t\t\t\t"
echo "I'm Zero." > ctrl
python3 ex02/whois.py 0 > output
if diff -q ctrl output > /dev/null
then
    printf "${BGREEN}PASS${RESET}\n"
else
    printf "${BRED}FAIL${RESET}\n"
fi
rm ctrl output
printf "TEST:\t'python3 whois.py Hello'\t\t\t"
echo "AssertionError: argument is not an integer" > ctrl
python3 ex02/whois.py Hello > output
if diff -q ctrl output > /dev/null
then
    printf "${BGREEN}PASS${RESET}\n"
else
    printf "${BRED}FAIL${RESET}\n"
fi
rm ctrl output
printf "TEST:\t'python3 whois.py 12 3'\t\t\t\t"
echo "AssertionError: more than one argument are provided" > ctrl
python3 ex02/whois.py 12 3 > output
if diff -q ctrl output > /dev/null
then
    printf "${BGREEN}PASS${RESET}\n"
else
    printf "${BRED}FAIL${RESET}\n"
fi
rm ctrl output

File=output
printf "${CYAN}EX03\n"
printf "${RESET}"
printf "TEST:\ttext_analyzer() has its mandatory docstring?\t"
# echo "AssertionError: argument is not an integer" > ctrl
python3 ex03/count.py --help > output
if grep -q "None" "$File"
then
    printf "${BRED}FAIL${RESET}\n"
else
    printf "${BGREEN}PASS${RESET}\n"
fi
rm output

printf "TEST:\ttest on a text\t\t\t\t\t"
printf "The text contains 143 character(s):\n- 2 upper letter(s)\n- 113 lower letter(s)\n- 4 punctuation mark(s)\n- 18 space(s)\n" > ctrl
python3 ex03/count.py "Python 2.0, released 2000, introduced features like List comprehensions and a garbage collection system capable of collecting reference cycles." > output
if diff -q ctrl output > /dev/null
then
    printf "${BGREEN}PASS${RESET}\n"
else
    printf "${BRED}FAIL${RESET}\n"
fi
rm ctrl output

printf "${CYAN}EX04\n"
printf "${RESET}"
printf "TEST:\t'python3 operations.py 10 3'\t\t\t"
printf "Sum: \t\t 13\nDifference: \t 7\nProduct: \t 30\nQuotient: \t 3.3333333333333335\nRemainder: \t 1\n" > ctrl
python3 ex04/operations.py 10 3 > output
if diff -q ctrl output > /dev/null
then
    printf "${BGREEN}PASS${RESET}\n"
else
    printf "${BRED}FAIL${RESET}\n"
fi
rm ctrl output
printf "TEST:\t'python3 operations.py 42 10'\t\t\t"
printf "Sum: \t\t 52\nDifference: \t 32\nProduct: \t 420\nQuotient: \t 4.2\nRemainder: \t 2\n" > ctrl
python3 ex04/operations.py 42 10 > output
if diff -q ctrl output > /dev/null
then
    printf "${BGREEN}PASS${RESET}\n"
else
    printf "${BRED}FAIL${RESET}\n"
fi
rm ctrl output
printf "TEST:\t'python3 operations.py 1 0'\t\t\t"
printf "Sum: \t\t 1\nDifference: \t 1\nProduct: \t 0\nQuotient: \t ERROR (division by zero)\nRemainder: \t ERROR (modulo by zero)\n" > ctrl
python3 ex04/operations.py 1 0 > output
if diff -q ctrl output > /dev/null
then
    printf "${BGREEN}PASS${RESET}\n"
else
    printf "${BRED}FAIL${RESET}\n"
fi
# rm ctrl output
printf "TEST:\t'python3 operations.py'\t\t\t\t"
printf "Usage: python operations.py <number1> <number2>\nExample:\n\tpython operations.py 10 3\n" > ctrl
python3 ex04/operations.py > output
if diff -q ctrl output > /dev/null
then
    printf "${BGREEN}PASS${RESET}\n"
else
    printf "${BRED}FAIL${RESET}\n"
fi
# rm ctrl output
printf "TEST:\t'python3 operations.py 12 10 5'\t\t\t"
printf "AssertionError: too many arguments\n" > ctrl
python3 ex04/operations.py 12 10 5 > output
if diff -q ctrl output > /dev/null
then
    printf "${BGREEN}PASS${RESET}\n"
else
    printf "${BRED}FAIL${RESET}\n"
fi
# rm ctrl output
printf "TEST:\t'python3 operations.py \"12\" 5'\t\t\t"
printf "AssertionError: only integers\n" > ctrl
python3 ex04/operations.py \"12\" 5 > output
if diff -q ctrl output > /dev/null
then
    printf "${BGREEN}PASS${RESET}\n"
else
    printf "${BRED}FAIL${RESET}\n"
fi
rm ctrl output
printf "TEST:\t'python3 operations.py 12 \"5\"'\t\t\t"
printf "AssertionError: only integers\n" > ctrl
python3 ex04/operations.py 12 \"5\" > output
if diff -q ctrl output > /dev/null
then
    printf "${BGREEN}PASS${RESET}\n"
else
    printf "${BRED}FAIL${RESET}\n"
fi
rm ctrl output

printf "${CYAN}EX07\n"
printf "${RESET}"
printf "TEST:\tForbidden functions: filter()\t\t\t"
if grep -q "filter()" ex07/filterwords.py
then
    printf "${BRED}FAIL${RESET}\n"
else
    printf "${BGREEN}PASS${RESET}\n"
fi

printf "${CYAN}EX10\n"
printf "${RESET}"
printf "TEST:\tForbidden libraries: tqdm, alive_progress, perc\t"
if grep -q "tqdm\|alive_progress\|from perc" ex10/loading.py
then
    printf "${BRED}FAIL${RESET}\n"
else
    printf "${BGREEN}PASS${RESET}\n"
fi

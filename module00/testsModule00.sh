#!/bin/bash

# COLORS #
RED='\033[00;31m'
CYAN='\033[00;36m'
RESET='\033[0m'
# Background #
BRED='\033[1;41m'
BGREEN='\033[1;42m'

printf "${CYAN}TESTS MODULE PYTHON 00\n\n"
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
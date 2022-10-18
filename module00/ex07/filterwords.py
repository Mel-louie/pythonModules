import sys
import re

if len(sys.argv) != 3:
    print("ERROR")
    sys.exit()

try:
    n = int(sys.argv[2])
except ValueError:
    print("ERROR")
    sys.exit()

s = re.split('[ !#$%&*,-./:;<=>?@^_`}{~' + r'\"\'\(\)\+\[\]\|' + ']', sys.argv[1])
# the mandatory list comprehension expression
s = [word for word in s if len(word) > n]
print(s)

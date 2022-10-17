import sys

if len(sys.argv) < 2:
	print('The program needs at least one (1) string as argument.')
	exit()

str = ''

if len(sys.argv) > 2:
	i = 1
	while i < len(sys.argv):
		str = str + sys.argv[i]
		i += 1
		if i != len(sys.argv):
			str = str + ' '
elif len(sys.argv) == 2:
	str = sys.argv[1]


# upper case to lower case and vice versa
str = str.swapcase()

# use .join() method to merge all of the characters resulting from the reversed iteration into a new string
print(''.join(reversed(str)))

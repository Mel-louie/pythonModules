import sys

if len(sys.argv) < 2:
    print("This program needs one (1) argument.")
    exit()
elif len(sys.argv) > 2:
    print("AssertionError: more than one argument are provided")
    exit()

if sys.argv[1].isdigit():
    num = int(sys.argv[1])
else:
    print("AssertionError: argument is not an integer")
    exit()

if (num == 0):
    print("I'm Zero.")
elif (num % 2) == 0:
    print("I'm Even.")
else:
    print("I'm Odd.")

import sys

if len(sys.argv) < 3:
    print("Usage: python operations.py <number1> <number2>")
    print("Example:\n\tpython operations.py 10 3")
    sys.exit()
elif len(sys.argv) > 3:
    print("AssertionError: too many arguments")
    sys.exit()

try:
    a = int(sys.argv[1])
except ValueError:
    print("AssertionError: only integers")
    sys.exit()
try:
    b = int(sys.argv[2])
except ValueError:
    print("AssertionError: only integers")
    sys.exit()

print("Sum: \t\t", a + b)
print("Difference: \t", a - b)
print("Product: \t", a * b)

try:
    print("Quotient: \t", a / b)
except ZeroDivisionError:
    print("Quotient: \t ERROR (division by zero)")

try:
    print("Remainder: \t", a % b)
except ZeroDivisionError:
    print("Remainder: \t ERROR (modulo by zero)")

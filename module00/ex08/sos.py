import sys

if len(sys.argv) < 2:
    print("Usage: python sos.py <string1>")
    sys.exit()

MorseDict = { 'A':'.-', 'B':'-...', 'C':'-.-.',
                'D':'-..', 'E':'.', 'F':'..-.',
                'G':'--.', 'H':'....', 'I':'..',
                'J':'.---', 'K':'-.-', 'L':'.-..',
                'M':'--', 'N':'-.', 'O':'---',
                'P':'.--.', 'Q':'--.-', 'R':'.-.',
                'S':'...', 'T':'-', 'U':'..-',
                'V':'...-', 'W':'.--', 'X':'-..-',
                'Y':'-.--', 'Z':'--..', '0':'-----',
                '1':'.----', '2':'..---', '3':'...--',
                '4':'....-', '5':'.....', '6':'-....',
                '7':'--...', '8':'---..', '9':'----.',
                ' ':'/' }

s = " ".join(c for c in sys.argv[1:]).upper()

if not all(c in MorseDict for c in s):
    print("ERROR")
    sys.exit()

print(' '.join(MorseDict[c] for c in s))

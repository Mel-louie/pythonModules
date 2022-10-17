import string
import sys

def text_analyzer(text: str = ""):
    """
    This function counts the number of upper characters, lower characters, punctuation and spaces in a given text.
    """

    if type(text) != str:
        print("AssertionError: argument is not a string")
        return

    if text == "":
        text = input("What is the text to analyze?\n>> ")

    print("The text contains", len(text), "character(s)")
    print("- ", sum(1 for c in text if c.isupper()), " upper letter(s)")
    print("- ", sum(1 for c in text if c.islower()), " lower letter(s)")
    print("- ", sum(1 for c in text if c in string.punctuation), " punctuation mark(s)")
    print("- ", sum(1 for c in text if c.isspace()), " space(s)")


if __name__ == "__main__":
    if len(sys.argv) > 2:
        print("AssertionError: to much arguments")
        sys.exit()
    elif len(sys.argv) == 2:
        text_analyzer(sys.argv[1])
    else:
        text_analyzer()
    
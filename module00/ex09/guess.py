import sys
from random import randint

print("This is an interactive guessing game!")
print("You have to enter a number between 1",
      "and 99 to find out the secret number.")
print("Type 'exit' to end the game.")
print("Good luck\n")

secretNum = randint(1, 99)
guess = 0
count = 0

while (guess != secretNum):
    guess = input("What's your guess between 1 and 99?\n>> ")
    if (guess == "exit"):
        print("Goodbye!")
        sys.exit()

    count += 1
    try:
        guess = int(guess)
    except ValueError:
        print("That's not a number.")
        continue

    if guess < 1 or guess > 99:
        print("Out of range. Range is between 1 and 99.")
        continue

    if guess == 42:
        print("The answer to the ultimate question of ",
              "life, the universe and everything is 42.")

    if guess < secretNum:
        print("Too low!")
    elif guess > secretNum:
        print("Too high!")

if count == 1:
    print("Congratulations! You got it on your first try!")
else:
    print("Congratulations, you've got it!")
    print(f"You won in {count} attempts!")

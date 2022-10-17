cookbook = {
    'sandwich': {
        'ingredients': ['ham', 'bread', 'cheese', 'tomatoes'],
        'meal': 'lunch',
        'prep_time': 10
    },
    'cake': {
        'ingredients': ['flour', 'sugar', 'eggs'],
        'meal': 'dessert',
        'prep_time': 60
    },
    'salad': {
        'ingredients': ['avocado', 'arugula', 'tomatoes', 'spinach'],
        'meal': 'lunch',
        'prep_time': 15
    }
}


def add_recipe():
    name = input("Enter a name:\n")
    while name in cookbook:
        print("This recipe already exists")
        name = input("Enter a name:\n")
    ingredient: 'list[str]' = []
    item = input("Enter ingredients:\n")
    while item != "":
        ingredient.append(item)
        item = input()

    meal = input("Enter a meal type:\n")

    min_time = True
    while min_time:
        try:
            time = int(input("Enter a preparation time:\n"))
            min_time = False
        except ValueError:
            print("Please, enter a time in minutes")
    cookbook[name] = {
        'ingredients': ingredient,
        'meal': meal,
        'prep_time': time
    }
    print("The recipe is added!")


def remove_recipe(name):
    if name not in cookbook:
        print("Recipe not found.")
        return
    cookbook.pop(name)
    print("The recipe is deleted!")


def print_recipe(name):
    if name not in cookbook:
        print("Recipe not found.")
        return
    print(f"Recipe for {name}:")
    print(f"\tIngredients list: {cookbook[name]['ingredients']}")
    print(f"\tTo be eaten for {cookbook[name]['meal']}.")
    print(f"\tTakes {cookbook[name]['prep_time']} minutes of cooking.")


def print_all_recipe():
    for key in cookbook.keys():
        print_recipe(key)


def print_menu():
    print("List of available option:")
    print("\t1: Add a recipe")
    print("\t2: Delete a recipe")
    print("\t3: Print a recipe")
    print("\t4: Print the cookbook")
    print("\t5: Quit")


if __name__ == "__main__":
    print("Welcome to the Python Cookbook!")
    print_menu()

    opt = 0
    while opt != 5:
        try:
            opt = int(input("Please select an option:\n>> "))
        except ValueError:
            print("Sorry, this option does not exist.")
            print_menu()
            continue
        if opt == 1:
            add_recipe()
        elif opt == 2:
            name = input("Please enter a recipe name:\n")
            remove_recipe(name)
        elif opt == 3:
            name = input("Please enter a recipe name:\n")
            print_recipe(name)
        elif opt == 4:
            print_all_recipe()
        elif opt == 5:
            print("Cookbook closed. Goodbye!")
        else:
            print("Sorry, this option does not exist.")
            print_menu()

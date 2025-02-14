todolist = []

def add_todo():
    todo = input("Enter the to-do item: ")
    todolist.append(todo)

def remove_todo():
    if todolist:
        todolist.pop()
    else:
        print("No items to remove.")

def get_all_todo():
    if todolist:
        print("To-do list:")
        idx = 1
        for item in todolist:
            print(f"{idx}. {item}")
            idx += 1
    else:
        print("To-do list is empty.")


while True:
    user_input = input("Enter 1 to add, 2 to delete, and 3 to display:")
    if user_input == '1':
        add_todo()
    elif user_input == '2':
        remove_todo()
    elif user_input == '3':
        get_all_todo()
    else:
        print("Invalid input. Please enter 1, 2, 3")
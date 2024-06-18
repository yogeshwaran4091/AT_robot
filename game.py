import random

def generate_puzzle(size):
    numbers = list(range(1, size*size))
    random.shuffle(numbers)
    numbers.append(None)  # None represents the empty space
    puzzle = [numbers[i:i+size] for i in range(0, len(numbers), size)]
    return puzzle

def print_puzzle(puzzle):
    size = len(puzzle)
    for i in range(size):
        for j in range(size):
            if puzzle[i][j] is None:
                print("  ", end=" ")  # Print empty space nicely
            else:
                print(f"{puzzle[i][j]:2}", end=" ")  # Print numbers aligned
        print()

def is_solvable(puzzle):
    size = len(puzzle)
    inversion_count = 0
    flat_puzzle = [num for row in puzzle for num in row if num is not None]
    for i in range(len(flat_puzzle)):
        for j in range(i + 1, len(flat_puzzle)):
            if flat_puzzle[i] > flat_puzzle[j]:
                inversion_count += 1
    return inversion_count % 2 == 0

def is_solved(puzzle):
    size = len(puzzle)
    target = list(range(1, size*size)) + [None]
    flat_puzzle = [num for row in puzzle for num in row]
    return flat_puzzle == target

def move(puzzle, direction):
    size = len(puzzle)
    empty_row, empty_col = find_empty_space(puzzle)
    if direction == "up" and empty_row > 0:
        puzzle[empty_row][empty_col], puzzle[empty_row - 1][empty_col] = puzzle[empty_row - 1][empty_col], puzzle[empty_row][empty_col]
    elif direction == "down" and empty_row < size - 1:
        puzzle[empty_row][empty_col], puzzle[empty_row + 1][empty_col] = puzzle[empty_row + 1][empty_col], puzzle[empty_row][empty_col]
    elif direction == "left" and empty_col > 0:
        puzzle[empty_row][empty_col], puzzle[empty_row][empty_col - 1] = puzzle[empty_row][empty_col - 1], puzzle[empty_row][empty_col]
    elif direction == "right" and empty_col < size - 1:
        puzzle[empty_row][empty_col], puzzle[empty_row][empty_col + 1] = puzzle[empty_row][empty_col + 1], puzzle[empty_row][empty_col]

def find_empty_space(puzzle):
    size = len(puzzle)
    for i in range(size):
        for j in range(size):
            if puzzle[i][j] is None:
                return i, j

def main():
    size = 4  # Adjust size for different grid sizes
    puzzle = generate_puzzle(size)
    
    print("Welcome to the Number Puzzle Game!")
    print("Arrange the numbers in ascending order:")
    print_puzzle(puzzle)
    
    while not is_solved(puzzle):
        direction = input("Enter direction (up, down, left, right) to move the empty space (q to quit): ").strip().lower()
        
        if direction == "q":
            print("Quitting the game.")
            break
        
        move(puzzle, direction)
        print_puzzle(puzzle)
    
    if is_solved(puzzle):
        print("Congratulations! You solved the puzzle.")

if __name__ == "__main__":
    main()

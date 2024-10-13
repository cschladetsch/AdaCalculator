# AdaForth - A Simple Forth Interpreter in Ada

AdaForth is a simple interpreter for the Forth programming language written in Ada. This project implements a basic stack-based execution model and a dictionary for Forth words, along with standard stack manipulation operations.

## Features
- **Basic Forth Interpreter**: A simple Forth interpreter that reads commands, searches for words in the dictionary, and executes them.
- **Stack Operations**: Provides basic stack operations including `PUSH`, `POP`, `DUP`, and `DROP`.
- **Word Dictionary**: A dictionary structure to store Forth words and their associated functions.
- **Forth Words Integration**: Basic Forth words are provided through the `Forth_Words` package.
- **Error Handling**: Handles unknown words or invalid inputs gracefully with error messages.

## Project Structure
```plaintext
AdaForth/
├── AdaForth.gpr            # GNAT Project File
├── forth_interpreter.adb    # Main interpreter loop
├── forth_stack.ads          # Stack specification
├── forth_stack.adb          # Stack implementation
├── forth_dictionary.ads     # Dictionary specification
├── forth_dictionary.adb     # Dictionary implementation
├── forth_words.ads          # Forth words specification
├── forth_words.adb          # Forth words implementation
├── bin/                     # Directory for executable
└── obj/                     # Directory for compiled objects


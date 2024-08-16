# Balanced Parentheses Checker

This Haskell project implements a program that checks whether a given string has balanced parentheses, brackets, and braces. The program considers different types of brackets—`()`, `{}`, `[]`—and provides detailed feedback on any imbalance detected. This project demonstrates the use of pattern matching, recursion, and list operations in Haskell.

## Table of Contents

- [Introduction](#introduction)
- [Components](#components)
  - [Core Functions](#core-functions)
  - [Helper Functions](#helper-functions)
  - [User Interface](#user-interface)
- [Usage](#usage)

## Introduction

The Balanced Parentheses Checker is designed to evaluate whether a string has properly balanced opening and closing brackets. It processes a string character by character, using a stack-based approach to ensure that every opening bracket has a corresponding closing bracket in the correct order.

## Components

### Core Functions

- **isBalanced**: The main function that takes a string as input and returns a tuple. The tuple contains a Boolean indicating if the string is balanced and a message string describing the result (e.g., "Valid" or an explanation of the imbalance).
- **checkStack**: A helper function that recursively processes the string, using a stack to keep track of unmatched opening brackets. It returns a tuple containing a Boolean (whether the string is balanced) and the current state of the stack.

### Helper Functions

- **isOParen**: Determines if a character is an opening bracket (`(`, `[`, `{`).
- **isCParen**: Determines if a character is a closing bracket (`)`, `]`, `}`).
- **matches**: Checks if a pair of characters is a matching set of opening and closing brackets.

### User Interface

- The user interface is command-line based, allowing users to input a string and receive immediate feedback on whether the parentheses are balanced.
- The program continues to accept strings for validation until the user types `"exit"`, which ends the program.

## Usage

To use this project, follow these steps:

1. Ensure you have GHC (the Glasgow Haskell Compiler) installed on your system.
2. Clone or download this repository.
3. Navigate to the project directory in your terminal.
4. Compile the project using `ghc --make balancedParentheses.hs` or similar commands.
5. Run the executable `./balancedParentheses` to start the application.
6. Input strings containing various types of brackets when prompted.
7. The program will output whether the input string has balanced parentheses or describe the type of imbalance.
8. To exit the program, type `"exit"` when prompted for input.


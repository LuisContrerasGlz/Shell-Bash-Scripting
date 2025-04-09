true '

Write a Bash script that checks if a given number is even or odd and prints a message accordingly.
Output:

Please input a number:
100
100 is even.
Please input a number:
101
101 is odd.


'

#!/bin/bash

# Prompt the user to input a number
echo "Please input a number:"
read number

# Check if the input is a number
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "That's not a valid number."
    exit 1
fi

# Use modulo to check for even or odd
if [ $((number % 2)) -eq 0 ]; then
    echo "$number is even."
else
    echo "$number is odd."
fi


true '

Write a Bash script that checks if a file named "abc.sh" is executable and if it is, runs the script, otherwise prints "Script is not executable".
Output:

Script is not executable


'

# Check if the file "abc.sh" is executable
if [ -x "abc.sh" ]; then
    ./abc.sh
else
    echo "Script is not executable"
fi

true '

Write a Bash script that checks if a given string is a palindrome (reads the same forwards and backwards ie. "kayak") and prints a message accordingly.
Output:

Input a string:
madam
The string "madam" is a palindrome.


'

# Prompt the user for input
echo "Input a string:"
read input

# Reverse the input string
reversed=$(echo "$input" | rev)

# Compare original and reversed strings
if [ "$input" = "$reversed" ]; then
    echo "The string \"$input\" is a palindrome."
else
    echo "The string \"$input\" is not a palindrome."
fi
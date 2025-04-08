#!/bin/bash
# Shebang line: Indicates the path to the shell interpreter (in this case, bash)

# Echo with Escape Sequences:

true '
Write a Bash script that uses the echo command to print a multi-line message using escape sequences for newlines (\n) and tabs (\t).
Output:

This is Exercise-1.
	This is Exercise-2.
		This is Exercise-3.

'

# Using echo command to print a multi-line message
echo -e "This is Exercise-1.\n\tThis is Exercise-2.\n\t\tThis is Exercise-3."
# -e option enables interpretation of backslash escapes
# \n represents a newline character
# \t represents a tab character

# Variable Concatenation:

true '
Write a Bash script that declares two variables, "var1" and "var2", and assign them two different words. Concatenate the variables and print the result.
Output:

Hello World
'

# Variable declaration and assignment
var1="Hello"
var2="World"
# Concatenating the variables and printing the result
echo "$var1 $var2"


# Using Special Variables:

true '
Write a Bash script that utilizes special variables like $0, $#, $@, and $? in a script and display their values
Output:

Name of the script: Main.sh
Number of arguments passed: 0
All arguments passed: 
Exit status of the last command: 0
'

# Print the name of the script
echo "Name of the script: $0"
# Print the number of arguments passed to the script
echo "Number of arguments passed: $#"
# Print all the arguments passed to the script
echo "All arguments passed: $@"
# Check the exit status of the last command
echo "Exit status of the last command: $?"
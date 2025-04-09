#! /bin/bash

# Variables: Assigning a value to a variable
MY_VAR="Hello World"

# Print the value of the variable
echo $MY_VAR

# Exporting a variable to make it available to child processes
export MY_VAR="Exported Value"

# Performing basic arithmetic (addition)
RESULT=$((5 + 3))
echo "5 + 3 = $RESULT"

# Floating-point arithmetic using bc
FLOAT_RESULT=$(echo "scale=2; 10 / 3" | bc)
echo "10 / 3 = $FLOAT_RESULT"

# Redirect output to a file (overwrite)
echo "This is a line" > output.txt

# Append output to a file (without overwriting)
echo "This is another line" >> output.txt

# Redirect standard error to a file
ls non_existing_file 2> error.log

# Using pipes to chain commands (counting lines in a file)
ls -l | wc -l

# If-else conditional statement to check if a file exists
if [ -f output.txt ]; then
    echo "File output.txt exists"
else
    echo "File output.txt does not exist"
fi

# Using elif to add more conditions
if [ -d mydir ]; then
    echo "Directory exists"
elif [ -f myfile.txt ]; then
    echo "File exists"
else
    echo "Neither exists"
fi

# For loop to iterate over a list of items
for item in one two three; do
    echo "Item: $item"
done

# While loop to count down from 5
counter=5
while [ $counter -gt 0 ]; do
    echo "Counter: $counter"
    counter=$((counter - 1))
done

# Function to print a greeting
greet() {
    echo "Hello, $1!"
}

# Calling the function with a name
greet "Alice"

# Creating a directory named "testdir"
mkdir testdir

# Changing into the created directory
cd testdir

# Listing the contents of the current directory
ls -lha

# Create a new file and write some text
echo "This is a test file" > testfile.txt

# Run a command in the background
sleep 10 &

# List all background jobs
jobs

# Killing a process using its PID (example)
# kill 12345

# Checking running processes with ps
ps aux | grep bash

# Using the type command to check if a command is built-in
type echo

# Using the exit command to terminate the script
exit 0

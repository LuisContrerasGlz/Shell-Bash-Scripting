# List the names of the files only (useful for scripting):

ls -1

# List files with size in human-readable format:

ls -lh

# List files in a specific directory and its subdirectories:

ls /path/to/directory -R

# Lists files sorted by the modification time in reverse order (newest last):

ls -lrt

# Create a whole path (all the parents and the new directory if they didn’t exist):

mkdir -p /nonexistent/parent/directory/new_directory

#! /bin/bash

# Print a message to the console
echo bash script test1

# Print the current working directory
pwd

# List files and directories in the current location
ls

# List all files including hidden ones
ls -a

# List files in long format, sorted by modification time, in reverse order (newest last)
ls -ltra

# Create a new directory named "test"
mkdir test

# Change to the "test" directory
cd test

# Print a message to the console
echo "List of commands for Bash scripting"

# Create an empty file named "file1.txt"
touch file1.txt

# Create an empty file named "file2.txt"
touch file2.txt

# Update the timestamp of "file1.txt" (without changing the content)
touch -c file1.txt

# Create and write to a new file named "file3.txt" using the "cat" command
cat > file3.txt

# Change to the directory specified by a variable
cd $DIR_VAR

# Change to a previous directory
cd -

# Change to the directory and execute a command if the first command was successful
cd /path/to/directory && command

# Change to the directory and print a message if the first command exits with an error
cd /path/to/directory || echo "Failed to change directory"

# Echo two lines in a single echo command
echo "first line \n second line"

# Recursively find all files of a specific type or name without deleting (preview mode)
find . -name "*.bak" -type f

# Recursively find and delete all files of a specific type or name
find . -name "*.bak" -type f -delete


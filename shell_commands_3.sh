true '

In shell scripting, the square brackets [] are used to enclose a conditional expression for testing purposes. 

This is known as the [command] test The [command] test evaluates a condition and returns an exit status of 0 (true) or 1 (false) based on the result

Good to know that Double brackets [[ ]] provide additional features and are generally preferred over the single brackets in modern shell scripting. 

The double brackets support pattern matching, substring matching, and other advanced features. 

However, the single brackets are still widely used and supported in most shells


'

# Example:

if [ "$var1" == "$var2" ];
then
    echo "var1 is equal to var2"
fi

# Or:

if test "$var1" = "$var2";
then
    echo "var1 is equal to var2"
fi

# Inequality Test
if [ "$var1" != "$var2" ]; 
then
    echo "var1 is not equal to var2"
fi

# File Existence Test “-e”. Checks if a file or directory exists.

if [ -e "/path/to/file" ]; 
then
    echo "file exists"
fi

# File Type Test `-f` or `-d`. Checks if a file or directory exists and is of the specified type.

if [ -f "/path/to/file" ]; then
    echo "file exists and is a regular file"
fi
if [ -d "/path/to/directory" ]; then
    echo "directory exists"
fi

# String Length Test “#” and greater than test “-ge". Checks the length of a string.

if [ ${#var} -ge 5 ]; then
echo "var has 5 or more characters"
fi

# integer comparison:

# -eq is equal to
if [ "$a" -eq "$b" ]

# -ne is not equal to
if [ "$a" -ne "$b" ]

# -gt is greater than
if [ "$a" -gt "$b" ]

# -ge is greater than or equal to
if [ "$a" -ge "$b" ]

# -lt is less than
if [ "$a" -lt "$b" ]

# -le is less than or equal to
if [ "$a" -le "$b" ]

# < is less than (within double parentheses)
(("$a" < "$b"))

# <= is less than or equal to (within double parentheses)
(("$a" <= "$b"))

# > is greater than (within double parentheses)
(("$a" > "$b"))

# >= is greater than or equal to (within double parentheses)
(("$a" >= "$b"))

# The `[command]` test can also be used with logical operators (`&&`, `||`, `!`) to create more complex conditions. 

if [ "$var1" == "$var2" ] && [ "$var3" -gt 10 ]; 
then
 echo "var1 is equal to var2 and var3 is greater than 10"
fi

# Condition tests using the if/then construct may be nested. The net result is equivalent to using the && compound comparison operator.

a=3
if [ "$a" -gt 0 ]
then
  if [ "$a" -lt 5 ]
  then
    echo "The value of \"a\" lies somewhere between 0 and 5."
  fi 
fi

# Same result as:

if [ "$a" -gt 0 ] && [ "$a" -lt 5 ]
then
  echo "The value of \"a\" lies somewhere between 0 and 5."
fi



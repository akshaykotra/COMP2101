#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

echo "Enter the firstnum"
read firstnum
echo "Enter the secondnum"
read secondnum

sum=$((firstnum + secondnum))
dividend=$((firstnum / secondnum))
substraction=$((firstnum - secondnum))
multiplication=$((firstnum * secondnum))
modulus=$((firstnum % secondnum))
$power=$((firstnum ** secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum substracted by $secondnum is $substraction
$firstnum multiplicated by $secondnum is $multiplication
$firstnum divided by $secondnum is $dividend
$firstnum power of $secondnum is $power
  - More precisely, it is $fpdividend with a remainder of $modulus
EOF

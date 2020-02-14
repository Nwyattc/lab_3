#!/bin/bash
# Author: Nate Christy and Vanessa Reyes
# Date: 2/9/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem
echo "Enter a filename: "
read $fileN
echo "Enter a regular expression: "
read $regex
grep $regex $fileN
#count phone numbers
grep -c "\(([0-9]\{3\})\|[0-9]\{3\}\)[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}" regex_practice.txt
#count emails
grep -E -c "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" regex_practice.txt
#list 303 phone numbers
grep -o -E "303-[0-9]{3}-[0-9]{4}" regex_practice.txt 
#grep -o "\((303-)\(|[0-9]\{3\}\))[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}" regex_practice.txt
#store geocities emails in new txt file
grep "@geocities.com" regex_practice.txt >> email_results.txt

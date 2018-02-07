#!/bin/bash
#Write the regex expression necessary to calculate the answer for each:

fileName="$1"

printf "FileName: %s\n" $fileName


# 1. How many lines end with a number?
grep -e "[0-9]$" RegexPracticeData.txt | wc -l
# 2. How many lines do not start with a vowel?
# 3. How many 12 letter (alphabet only) lines?
# 4. How many phone numbers are in the dataset (format: ‘_ _ _-_ _ _-_ _ _ _’)?
# 5. How many city of Boulder phone numbers (Eg: starting with 303-_ _ _-_ _ _ _)?
# 6. How many begin with a vowel and end with a number? 
# 7. How many email addresses are from geocities? (Eg: end with'geocities.com')?
# 8. How many email addresses are in ‘first.last’ name format and involve someone who’s first name starts with a letter in the first half of the alphabet? 

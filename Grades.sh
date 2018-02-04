#!/bin/bash
#need to pass in StudentGrades.txt as a command line argument
#tr -d 
averageArray=()
uniqueIDArray=()
firstNameArray=()
lastNameArray=()
gradeSum=0
gradeAverage=0
index=0

#read in file and parse each line into variables
while read -r uniqueID firstName lastName scoreOne scoreTwo scoreThree; do
  #printf "Line Count: %s\n" $lineCount
  #printf "Unique ID: %s\n" $uniqueID
  uniqueIDArray[index]=$uniqueID
  #printf "firstName: %s\n" $firstName
  firstNameArray[index]=$firstName
  #printf "lastName: %s\n" $lastName
  lastNameArray[index]=$lastName
  #printf "scoreOne: %s\n" $scoreOne
  #printf "scoreTwo: %s\n" $scoreTwo
  #printf "scoreThree: %s\n" $scoreThree
  let gradeSum="scoreOne+scoreTwo+scoreThree"
  #printf "gradeSum: %s\n" $gradeSum
  let gradeAverage="gradeSum/3"
  averageArray[index]=$gradeAverage
  #printf "gradeAverage: %s\n" $gradeAverage
 # gradeSum=((scoreOne + scoreTwo + scoreThree))
  index=$(($index + 1))

#end of while loop
done < <(tr -d '\r' < "$1")

#now the arrays should be populated so you need to rebuild the strings into the 
#desired output format and 

#printf 'Now printing array: %s\n' "${uniqueIDArray[0]}"
echo ${lastNameArray[@]}
echo ${firstNameArray[@]}
echo ${uniqueIDArray[@]}
echo ${averageArray[@]}

#Output Format
#averageScore [uniqueID] lastNameArray, firstName

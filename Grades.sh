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

#line should hold each line of the file
while read -r uniqueID firstName lastName scoreOne scoreTwo scoreThree; do
  #printf "Line Count: %s\n" $lineCount
  printf "Unique ID: %s\n" $uniqueID
  uniqueIDArray[index]=$uniqueID
  printf "firstName: %s\n" $firstName
  firstNameArray[index]=$firstName
  printf "lastName: %s\n" $lastName
  lastNameArray[index]=$lastNameArray
  printf "scoreOne: %s\n" $scoreOne
  printf "scoreTwo: %s\n" $scoreTwo
  printf "scoreThree: %s\n" $scoreThree
  let gradeSum="scoreOne+scoreTwo+scoreThree"
  printf "gradeSum: %s\n" $gradeSum
  let gradeAverage="gradeSum/3"
  printf "gradeAverage: %s\n" $gradeAverage
 # gradeSum=((scoreOne + scoreTwo + scoreThree))
  index=$(($index + 1))

  #printf "End of Loop\n"
done < <(tr -d '\r' < "$1")

printf 'Now printing array: %s\n' "${uniqueIDArray[0]}"
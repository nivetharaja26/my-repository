#! /bin/bash

echo hellooo

#variable

NAME="nivetha"
echo "my name is $NAME"
echo "my name is ${NAME}"

#user input

read -p "Enter ur name" NAM
echo "your name is $NAM"

#Branching

if [ "$NAM" == "nivetha" ]
then
	echo "ur name is nivetha"
elif [ "$NAM" == "deepika" ]
then
	echo "ur name is deepika"
else
	echo "helo"
fi


#comparision
NUM1=4
NUM2=6
if [ "$NUM1" -gt "$NUM2" ]
then
	echo "ur name is nivetha"
elif [ "$NUM1" -eq "$NUM2" ]
then
	echo "ur name is deepika"
else
	echo "helo"
fi

#File conditions

FILE="test.txt"
if [ -f "$FILE" ]
then
	echo "$FILE is a file"
else
	echo "$FILE is not a file"
fi


#case statement

read -p "Do u have chocolates?" ANSWER
case "$ANSWER" in
	[yY] | [yY][eE][sS])
		echo "You are good"
		;;
	[nN] | [nN][oO])
		echo "you are bad"
		;;
	*)
		echo "please enter y/yes or n/no"
		;;
esac


#For loop to rename files
FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES
	do
		echo "Renaming ==> $FILE to new-$FILE"
		mv $FILE $NEW-$FILE
done


#while loop for reading a text file

LINE=1
while read -r CURRENT_LINE
	do
		echo "$LINE: $CURRENT_LINE"
		((LINE++))
done < "./new-new-new-a.txt"

#Function

function helo() {
	echo "hi"
}
helo

# Function with Parameters

function greet() {
	echo "$1"
}
greet "bye"

#Create folder and wrtie to a file

mkdir hellooo
touch "hellooo/world.txt"
echo "Hello World" >> "hellooo/world.txt"
echo "file created"




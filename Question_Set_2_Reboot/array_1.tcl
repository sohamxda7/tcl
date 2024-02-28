#!/usr/bin/tclsh

#Write a TCL script to read n number of values in an array and copy those elements which is odd number into another array.

#Lets create a fruit name db where we will sort out odd fruit names

#First of lets ask user how many fruits he/she wants to enter

#lets add a check so that the program continues only if user enters a valid integer

while {true} {
	puts "How many fruit names do you want to enter?"
	gets stdin fruitnum
	if {[string is entier -strict $fruitnum] && $fruitnum > 0} {
		break 
	} else {
		puts "Please enter a proper integer!"
	}
}

#all done, now lets initiate an empty array
array set fruitname {}

#now we will take names of various fruits from user
for {set num 1} {$num <= $fruitnum} {incr num} {

#casually hint user of fruit number
puts "Taking value of the fruit no. $num"

#Taking value of the fruit name from user
puts "Enter the name of the fruit"
gets stdin name

#start setting previously initiated empty array
set fruitname($num) $name

}

#initiate an empty array to keep track of odd ones
array set fruitodd {}

#use foreach loop to iterate and start sorting odd ones out
foreach {key value} [array get fruitname] {
	if {$key % 2 > 0} {
		set fruitodd($key) $value 
		}
}

#finally output the odd fruit names
foreach {index fruit} [array get fruitodd] {
	puts "Fruit Name: $fruit"
}

#Result
if {0} {
How many fruit names do you want to enter?
5

Taking value of the fruit no. 1
Enter the name of the fruit
Mango

Taking value of the fruit no. 2
Enter the name of the fruit
Guava

Taking value of the fruit no. 3
Enter the name of the fruit
Lichi

Taking value of the fruit no. 4
Enter the name of the fruit
Jackfruit

Taking value of the fruit no. 5
Enter the name of the fruit
Orange

Fruit Name: Mango
Fruit Name: Orange
Fruit Name: Lichi
}

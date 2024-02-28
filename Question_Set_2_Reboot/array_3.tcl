#!/usr/bin/tclsh

#Write a TCL script to count the frequency/repeatation of each element of an array

#Lets do a subject database array, lets initiate an empty array first
array set subdb {}

#lets ask the user for how many subjects he/she wants to enter into the db
#i wanted to add an implementation which would keep taking the values from user however implementing a break with yes or no, seemed too long, so i thought it would be better to just ask the user how many subjects he/she wants to enter

#include a proper integer check
while {true} {

#ask total entry number from user
puts "How many subjects do you want to enter?"
gets stdin subjectnum

#if condition for breaking/continuing the loop
if {[string is entier -strict $subjectnum] && $subjectnum > 0} {
		break
	} else {
		puts "Enter a proper number!"
		after 1000
	}
}

#Entering the for loop
for {set loop 1} {$loop <= $subjectnum} {incr loop} {

#Show subject no. to casually notify the user
puts "Taking value for the subject No. $loop"

#Take subject name from user
puts "Enter the subject name:"
gets stdin subjectname

#set array values for subdb array which we initiated earlier
set subdb($loop) $subjectname
}

#initiate an empty array for keeping track of duplicate values
array set duplicate {}

#start foreach loop and start counting duplicate values
foreach {key value} [array get subdb] {
	if {[info exists duplicate($value)]} {
		incr duplicate($value)
	} else {
		set duplicate($value) 1
		}
	}

#show repeatation numbers to the user
foreach {name repeat} [array get duplicate] {
	puts "Subject:$name Occurances:$repeat"
}

#Result
if {0} {
How many subjects do you want to enter?
4

Taking value for the subject No. 1
Enter the subject name:
Physics

Taking value for the subject No. 2
Enter the subject name:
Math

Taking value for the subject No. 3
Enter the subject name:
Physics

Taking value for the subject No. 4
Enter the subject name:
Chem

Subject:Chem Occurances:1
Subject:Math Occurances:1
Subject:Physics Occurances:2
}

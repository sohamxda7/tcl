#!/usr/bin/tclsh

#Write a TCL script to read n number of values in an array and copy those elements which is odd number into another array.

#set array

array set number {
	one 1
	two 2
	three 3
	four 4
	five 5
	six 6
	seven 7
	eight 8
	nine 9
	ten 10
}

#number vertification check

while {true} {
	puts "Enter the number of arrays you want to fetch:"
	gets stdin userinput
if {[string is entier -strict $userinput] && $userinput > 0} {
	break
} else {
	puts "Enter a proper integer number greater than zero!"
	}
}


#main logic starts

foreach {key value} [array get number] {
	if {$value % 2 > 0 && $value <= $userinput} {
		set anotherarr($key) $value}
	}
puts "[array get anotherarr]"

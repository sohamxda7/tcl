#!/usr/bin/tclsh

#Write a TCL script to calculate the factorial of a given number.

#Add number check

while {true} {
	puts "Enter the number to get factorial:"
	gets stdin usernum
	if {[string is entier -strict $usernum] && $usernum>0} {
		break
	} else {
	puts "Enter the number correctly!" 
	}
}
	
#init var
set result 1

#main calc
for {set num 1} {$num <= $usernum} {incr num} {
	set result [expr {$result *$num}]
}

#throw value
puts "The factorial of $usernum: $result"

#dump vars
unset usernum
unset num
unset result

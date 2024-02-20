#!/usr/bin/tclsh

#Write a TCL script to check whether a given number is a 'Perfect' number or not.

#Main check

while {true} {
	puts "Enter the number that you want to check:"
	gets stdin usernum
if {[string is entier -strict $usernum]} {
	break
} else {
	puts "\nPlease enter a proper integer!"
	after 1000
	}
}

#Init vars
set sum 0

#main calc
for {set num 1} {$num < $usernum} {incr num} {
	if { $usernum % $num == 0} {
		set sum [expr {$sum + $num}]
		}
	}
if {$sum == $usernum} {
	puts "\nIt is a perfect number!"
} else {
	puts "\nIt is not a perfect number!"
}

#dump all the stored variables
unset sum
unset num
unset usernum		

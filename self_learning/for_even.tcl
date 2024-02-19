#!/usr/bin/tclsh

#Write a Tcl script that calculates the sum of all even numbers between 1 and 100.

set sum  0
for {set num 2} {$num <= 100} {incr num 2} {
	set sum [expr { $sum + $num }]}
puts "Sum of all even number from 1 to 100 is: $sum"

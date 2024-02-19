#!/usr/bin/tclsh

#Write a Tcl script that calculates the sum of the squares of all numbers from 1 to 10.

for {set num 1} {$num <= 10} {incr num} {
	puts "Square of $num: [expr {$num ** 2}]"}
unset num
	

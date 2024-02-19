#!/usr/bin/tclsh

#Write a Tcl script that calculates the sum of all even numbers between 1 and 100.

for {set num 2} {$num <= 100} {incr num 2} {
	puts "Even: $num"
	after 1000 } 

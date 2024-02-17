#!/usr/bin/tclsh

#Print out even numbers

for {set num 1} {$num<=100} {incr num} {
	if {[expr {$num % 2}] == 0} {
		after 1000
		puts "Even: $num" 
	} else {
		after 1000
		puts "Odd: $num" } }

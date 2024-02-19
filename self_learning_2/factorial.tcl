#!/usr/bin/tclsh

#Write a Tcl script that calculates the factorial of a given number using a for loop. The factorial of a non-negative integer.

puts "Enter the number of which you want to get factorial:"
gets stdin usernum
set result 1
for {set fact 1} {$fact <= $usernum} {incr fact} {
set result [expr {$fact * $result}]}
puts "The factorial is: $result"

#!/usr/bin/tclsh

#get number details
puts "Enter the first number:"
gets stdin a
puts "Enter the second number:"
gets stdin b

#do the maths
set c [expr {$a + $b}]

#throw the text
puts "The sum of two number is: $c"

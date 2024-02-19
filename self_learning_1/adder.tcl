#!/usr/bin/tclsh

#get number details
puts "Enter the first number:"
gets stdin first_num
puts "Enter the second number:"
gets stdin second_num

if {[string is entier -strict $first_num] && [string is entier -strict $second_num]} {

#do the maths
set total_sum [expr {$first_num + $second_num}]

#throw the text
puts "The sum of two number is: $total_sum"

} else {

puts "Enter a proper integer value" }

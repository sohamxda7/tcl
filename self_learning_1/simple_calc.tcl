#!/usr/bin/tclsh

#Using while, if, switch condition only

while {true} { 
#Number inputs
puts "Enter the first number:"
gets stdin first_num
puts "Enter the second number:"
gets stdin second_num

if {[string is double -strict $first_num] && [string is double -strict $second_num]} {
	break
} else {
	puts "Enter a proper value! Input values again!"
	after 1000 } }

#Menu choice
puts "What do you want to do?"
puts "Enter 1 = For Multiplication"
puts "Enter 2 = For Addition"
puts "Enter 3 = For Substraction"
puts "Enter 4 = For Division"
gets stdin choice

#using switch condition for choice based calc

switch $choice { 
1 {
set result [expr {$first_num * $second_num}]
puts "You have chosen Multiplication!"
puts "Your result is: $result"}

2 {
set result [expr {$first_num + $second_num}]
puts "You have chosen Addition!"
puts "Your result is: $result"}

3 {
set result [expr {$first_num - $second_num}]
puts "You have chosen Substraction!"
puts "Your result is: $result"}

4 { if {$second_num > 0} {
set result [expr {$first_num / $second_num}]
puts "You have chosen Division!"
puts "Your result is: $result"
} else { 
puts "The value of second number should be more than zero!"
} } }

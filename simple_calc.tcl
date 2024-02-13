#!/usr/bin/tclsh

#Greetings
puts "Simple Calculator"
puts "brought to you by soham sen"
after 2000

#Number inputs
puts "Enter the first number:"
gets stdin a
puts "Enter the second number:"
gets stdin b

#Menu choice
puts "What do you want to do?"
puts "Enter 1 = For Multiplication"
puts "Enter 2 = For Addition"
puts "Enter 3 = For Substraction"
puts "Enter 4 = For Division"
gets stdin c

#using if condition for choice based calc

#Multiplication choice
if {$c == 1} {
set d [expr $a*$b]
puts "You have chosen Multiplication"
after 1500
puts "Your result is: $d"}

#Addition Choice
if {$c == 2} {
set d [expr $a+$b]
puts "You have chosen Addition"
after 1500
puts "Your result is: $d"}

#Substraction choice
if {$c == 3} {
set d [expr $a-$b]
puts "You have chosen Substraction"
after 1500
puts "Your result is: $d"}

#Division choice
if {$c == 4} {
set d [expr $a/$b]
puts "You have chosen Division"
after 1500
puts "Your result is: $d"}

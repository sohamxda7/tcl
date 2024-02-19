#!/usr/bin/tclsh

# Write a TCL script to check whether a character is an alphabet, digit or special character.

puts "Enter your value:"
gets stdin user_value

if {[string is alpha -strict $user_value]} {
	puts "The value is an alphabet!"
} elseif {[string is digit -strict $user_value]} {
	puts "The value is a digit!"
} elseif {[string is ascii -strict $user_value]} {
	puts "The value is a special character!"
} else {
	puts "It is a string!!" }	 

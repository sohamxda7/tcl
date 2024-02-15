#!/usr/bin/tclsh

#Write a TCL script to check the value given by user is of which type (-ve integer,+ve integer, string, character, float).

puts "Enter your value:"; #Prompting user to enter the value
gets stdin user_value; #Taking the value from user
	if {$user_value<0 && [string is entier -strict $user_value]} {
		puts "The value is a negative integer!"
	} elseif {$user_value>0 && [string is entier -strict $user_value]} {
		puts "The value is a positive integer!"
	} elseif {[string is double $user_value]} {
		puts "The value is a float!"
	} else {
		puts "The value is a character!" }

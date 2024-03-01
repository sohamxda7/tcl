#!/usr/bin/tclsh

#Create a script that takes a string as input and checks if it is a palindrome (reads the same forwards and backwards).

puts "Enter a string"
gets stdin str
set rever [string reverse $str]

if {$str == $rever} {
	puts "The number is palindrome!"
} else {
	puts "Not a palindrome number"
	}

#!/usr/bin/tclsh

#Write a script that takes a string as input and checks if it contains only alphabetic characters.

puts "enter the string:"
gets stdin strn

if {[string is alpha -strict $strn]} {
	puts "String contains alphabets only"
	} else {
	puts "string does not contain alphabets"
}

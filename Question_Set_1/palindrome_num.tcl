#!/usr/bin/tclsh

#Write a TCL script to find number is palindrome or not.

puts "Enter the number:"
gets stdin usernum
if {[string is entier -strict $usernum]} {
set reversenum [string reverse $usernum]
if { $reversenum == $usernum } {
	puts "The number is palindrome"
} else {
	puts "The number is not palindrome" }
} else {
	puts "Please enter a proper integer" }

#!/usr/bin/tclsh

while {true} {
puts "Enter a number:"
gets stdin usernum
if {[string is double -strict $usernum]} {
	break
} else {
	puts "Please enter a valid number"
	after 1000 } }
set result [expr {$usernum * $usernum}]
puts "The square of your integer is: $result"



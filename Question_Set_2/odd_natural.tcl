#!/usr/bin/tclsh

#Write a TCL script to display the odd natural numbers till n and their sum.

#check for natural number
while {true} {
	puts "Enter the number till you want to display the odd natural numbers:"
	gets stdin usernum
if {[string is entier -strict $usernum] && $usernum > 0} {
	break
} else {
	puts "\nPlease enter the number again correctly!"
	after 1000 }}

#initiate result var
set result 0

#main calc
for {set num 1} {$num<=$usernum} {incr num 2} {
	set result [expr {$result + $num}]
	puts "The natural numbers are: $num"}
	
#free up mem
unset num
puts "The sum of all odd natural number till $usernum: $result"
unset result
unset usernum
		

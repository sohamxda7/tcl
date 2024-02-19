#!/usr/bin/tclsh

#while & if number check

while {true} {
puts "Enter the number:"
gets stdin usernum
if {[string is entier -strict $usernum]} {
	break
} else {
	puts "Please enter the value again!"
	after 1000}}

#implementation of for_loop	
for {set multnum 1} {$multnum<=10} {incr multnum} {
set output [expr {$usernum * $multnum}]
puts [format "%d X %d = %d" $usernum $multnum $output]
}


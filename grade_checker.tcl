#!/usr/bin/tclsh

#welcome screen
puts "Welcome to the Grade Checker"
puts "Brought to you by Soham Sen"
after 2000

#value taking starts
puts "Enter your name:"
gets stdin s
puts "Enter the total marks:"
gets stdin a
puts "Enter the obtained marks:"
gets stdin b

#main calc
set tcl_precision 4
set c [expr {$b*100.0/$a}]

#throwing grades according to the value
if {$c>=80} {
puts "Congrats! $s You have achieved grade A & Your marks percentage is $c" 
} elseif {$c>=60} {
puts "Well done! $s You have achieved grade B & Your marks percentage is $c"
} elseif {$c>=40} {
puts "You need to do better! $s You have achieved grade C & Your marks percentage is $c"
} else {
puts "Better luck next time! $s You have been disqualified & Your marks percentage is $c"
} 

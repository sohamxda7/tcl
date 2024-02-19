#!/usr/bin/tclsh

#value taking starts
puts "Enter your name:"
gets stdin username
puts "Enter the total marks:"
gets stdin total_marks
puts "Enter the obtained marks:"
gets stdin obtained_marks

if {[string is double -strict $total_marks] && [string is double -strict $obtained_marks]} {
#main calc
set tcl_precision 4
set percentage [expr { $obtained_marks * 100.0 / $total_marks}]

#throwing grades according to the value
if {$percentage>=80} {
puts "Congrats! $username You have achieved grade A & Your marks percentage is $percentage" 
} elseif {$percentage>=60} {
puts "Well done! $username You have achieved grade B & Your marks percentage is $percentage"
} elseif {$percentage>=40} {
puts "You need to do better! $username You have achieved grade C & Your marks percentage is $percentage"
} elseif {$percentage<=39} {
puts "Better luck next time! $username You have been disqualified & Your marks percentage is $percentage"
}} else {
puts "Input a proper value!"}

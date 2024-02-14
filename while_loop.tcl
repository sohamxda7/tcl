#!/usr/bin/tclsh

puts "Enter number"
gets stdin a
while {![string is integer -strict $a]} {
puts "Please enter a valid integer"
gets stdin a}
set b [expr {$a * $a}]
puts "The square of your integer is: $b"



#!/usr/bin/tclsh

puts "Enter number"
gets stdin usernum
while {![string is entier -strict $usernum]} {
puts "Please enter a valid integer"
gets stdin usernum}
set result [expr {$usernum * $usernum}]
puts "The square of your integer is: $result"



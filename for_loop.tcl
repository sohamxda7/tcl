#!/usr/bin/tclsh

puts "Enter the number:"
gets stdin usernum
while {![string is entier -strict $usernum]} {
puts "please enter a valid integer number again!"
puts "Enter the number:"
gets stdin usernum }
for {set multnum 1} {$multnum<=10} {incr multnum} {
set output [expr {$usernum * $multnum}]
puts [format "%d X %d = %d" $usernum $multnum $output]
}


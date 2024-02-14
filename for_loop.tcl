#!/usr/bin/tclsh

puts "Enter the number:"
gets stdin a
while {![string is integer -strict $a]} {
puts "please enter a valid integer number again!"
puts "Enter the number:"
gets stdin a }
for {set b 1} {$b<=10} {incr b} {
set c [expr {$a * $b}]
puts "$a X $b is $c" }


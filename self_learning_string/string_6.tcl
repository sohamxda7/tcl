#!/usr/bin/tclsh

#Write a script that takes a string as input and counts the number of vowels (a, e, i, o, u) in it.

puts "Enter a string:"
gets stdin str

set vowels [regexp -all -inline {[aeiou]} $str]
puts "$vowels"
puts "Number of vowels: [llength $vowels]"

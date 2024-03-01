#!/usr/bin/tclsh

puts "Enter a string:"
gets stdin str

set vowels [regexp -all -inline {[aeiou]} $str]
puts "Number of vowels: [llength $vowels]"

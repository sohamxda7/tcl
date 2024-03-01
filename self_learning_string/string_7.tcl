#!/usr/bin/tclsh

#Create a script that takes a string as input and replaces all vowels with the letter 'x'.

puts "Enter desired string:"
gets stdin str
puts "Replaced vowels with ^: [regsub -all {[aeiou]} $str "^"]"

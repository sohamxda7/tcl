#!/usr/bin/tclsh

#Create a script that takes a string as input and removes all whitespace characters from it.

puts "enter the string:"
gets stdin strn
puts "[string map {" " ""} $strn]"

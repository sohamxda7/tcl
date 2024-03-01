#!/usr/bin/tclsh

#Write a script that takes a sentence as input and prints each word on a new line.

puts "Enter the sentence:"
gets stdin str
foreach {word} [split $str] {
	puts "$word"
	}

#!/usr/bin/tclsh

#Write a TCL script to display a pattern like a diamond with an asterisk of n number.

# Get the number from the user
puts "Enter the number for the diamond pattern:"
gets stdin usernum
puts "\n"

#Upper half configuration

#main loop, this loop controls the whole function
for {set outer 1} {$outer <= $usernum} {incr outer} {

#loop for spaces
for {set spaces 1} {$spaces <= ($usernum - $outer)} {incr spaces} {
		puts -nonewline " "
		}

#loop for stars
for {set stars 1} { $stars <= ( 2 * $outer - 1)} {incr stars} {
	puts -nonewline "*"
	}
	puts ""
}

#!/usr/bin/tclsh

#Write a TCL script to count the frequency/repeatation of each element of an array

#get initial array name and total number of entires from user
puts "Enter the name of an array:"
gets stdin arraynum
puts "How many entries do you want"
gets stdin entrynum

#use a for loop to continiously take values
for {set loop 1} {$loop <= $entrynum} {incr loop} {
	puts "Iteration No. $loop"
	puts "Enter the name of the key:"
	gets stdin index
	puts "Enter the value of the key:"
	gets stdin pair
	set "${arraynum}($index)" $pair
	}

#!/usr/bin/tclsh

#Write a TCL script to count the frequency/repeatation of each element of an array.

# Create an array
array set foods {
    biriyani 1
    chowmein 2
    paratha 3
    biriyani 1
    chowmein 2
    chowmein 2
}

#set empty vars
set countone 0
set counttwo 0
set countthree 0

#main calc
foreach {key value} [array get foods] {
	if {$key == "biriyani"} {
		incr countone}
	if {$key == "chowmein"} {
		incr counttwo}
	if {$key == "paratha"} {
		incr countthree}
}

#throw results
puts "Biriyani Occurences: $countone times"
puts "Chowmein Occurences: $counttwo times"
puts "Paratha Occurences: $countthree times"
		

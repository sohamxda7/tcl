#!/usr/bin/tclsh

#Write a TCL script to insert the values in the array.

#set the array
array set firstarr {
	0 2
	1 5
	2 7
	3 9
	4 11
}

#insert a value
set firstarr(5) 8

#sort
foreach {key value} [lsort -increasing -stride 2 -index 1 -integer [array get firstarr]] {
	puts "$value"
}

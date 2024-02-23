#!/usr/bin/tclsh

#Write a TCL script for a 2D array of size 3x3 and print the matrix.

# Create a 2D array of size 3x3
array set matrix {
    1,2 3
    4,5 6
    7,8 9
}

foreach {key value} [lsort -increasing -stride 2 -index 1 -integer [array get matrix]] {
	set sorted "$key $value"
	set result [string map {"," " "} $sorted]
	puts $result
}

#!/usr/bin/tclsh

#Write a TCL script to merge two arrays of the same size and sort in descending order.


#set two arrays

array set firstArr {
	value1 1
	value2 2
	value3 3
}

array set secondArr {
	value4 4
	value5 5
	value6 6
}

if {[array size firstArr] == [array size secondArr]} {
	array set finalArr [concat [array get firstArr] [array get secondArr]]
	array set sorted [lsort -decreasing [array get finalArr]]
	
foreach {key value} [array get sorted] {
	puts "$key : $value"
	}
} else {
	puts "Both arrays are not of same size!"
}

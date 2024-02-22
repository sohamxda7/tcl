#!/usr/bin/tclsh

#Write a TCL script to merge two arrays of the same size and sort in descending order.


#set two arrays

array set first_colorcount {
    red   2
    green 5
    blue  4
    white 9
}

array set second_colorcount {
	yellow 3
	brown 6
	violet 7
	black 10
}

#merge two arrays
if {[array size first_colorcount] == [array size second_colorcount]} {
	foreach {color value} [array get first_colorcount] {
		 set second_colorcount($color) $value
}

#main logic
	foreach {color count} [lsort -decreasing -stride 2 -index 1 -integer [array get second_colorcount]] {
    			puts "Color: $color & Count: $count"
	} 
} else {
	puts "Two arrays are not of same size!"
}

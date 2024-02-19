#!/usr/bin/tclsh

#Write a TCL script to accept a coordinate point in an XY coordinate system and determine in which quadrant the coordinate point lies.

puts "Enter the coordinate point of X:"
gets stdin value_x
puts "Enter the coordinate point of Y:"
gets stdin value_y

if {[string is double -strict $value_x] && [string is double -strict $value_y]} {
		if {$value_x<0.0 && $value_y>0.0} {
			puts "It is in first quadrant!"
		} elseif {$value_x>0.0 && $value_y>0.0} {
			puts "It is in second quadrant!"
		} elseif {$value_x<0.0 && $value_y<0.0} {
			puts "It is in third quadrant!"
		} else {
			puts "It is in fourth quadrant!" }
		} else {
			puts "Enter the values properly!"}

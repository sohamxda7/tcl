#!/usr/bin/tclsh

# Write a TCL script to read temperature in centigrade and display a suitable message according to the temperature state

puts "Enter the value of the temperature (in centrigrade only):"
gets stdin temp_reading

if {[string is double -strict $temp_reading]} {
	if {$temp_reading < 0} {
		puts "Freezing weather!"
	} elseif {$temp_reading >= 0 && $temp_reading <= 10} {
		puts "Very cold weather!"
	} elseif {$temp_reading > 10 && $temp_reading <= 20} {
		puts "Cold weather!"
	} elseif {$temp_reading > 20 && $temp_reading <= 30} {
		puts "Normal weather!"
	} elseif {$temp_reading > 30 && $temp_reading < 40} {
		puts "Hot weather!"
	} elseif {$temp_reading >= 40} {
		puts "Very Hot weather!"
	} } else {
		puts "Enter a proper integer value!" }
	 

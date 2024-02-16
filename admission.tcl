#!/usr/bin/tclsh

#Write a TCL script to determine eligibility for admission to a professional course based on a criteria

#take values from user

puts "Enter your marks in physics:"
gets stdin phy_marks
puts "Enter your marks in chemistry:"
gets stdin chem_marks
puts "Enter your marks in maths:"
gets stdin math_marks

#Check for verifying the value

while {![string is double -strict $phy_marks] && ![string is double -strict $chem_marks] && ![string is double -strict $math_marks]} {
puts "You have entered wrong value for one of the subjects.\nPlease enter the values again!"
puts "Enter your marks in physics:"
gets stdin phy_marks
puts "Enter your marks in chemistry:"
gets stdin chem_marks
puts "Enter your marks in maths:"
gets stdin math_marks }

#main calc starts

set total_three [expr {$phy_marks + $chem_marks + $math_marks}]
set total_two [expr {$math_marks + $phy_marks}]

if { $math_marks >= 65 && $phy_marks >= 55 && $chem_marks >= 50 } {
	if { $total_three >= 190 || $total_two >= 140 } {
puts "You are eligible for admission!"
} else {
puts "You are not eligible for admission!" }
} else {
puts "You are not eligible for admission!" }




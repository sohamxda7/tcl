#!/usr/bin/tclsh

#Write a TCL script to determine eligibility for admission to a professional course based on a criteria

#take values from user & as well as put while check

#check and take value for physics
while {true} {
puts "Enter your marks in physics:"
gets stdin phy_marks
if {[string is double -strict $phy_marks]} {
	break 
} else {
puts "Enter your physics marks correctly!"
after 1000 }}

#check and take value for chem
while {true} {
puts "Enter your marks in chemistry:"
gets stdin chem_marks
if {[string is double -strict $chem_marks]} {
	break 
} else {
puts "Enter your chem marks correctly!"
after 1000 }}

#check and take value for math
while {true} {
puts "Enter your marks in math:"
gets stdin math_marks
if {[string is double -strict $math_marks]} {
	break 
} else {
puts "Enter your math marks correctly!"
after 1000 }}

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

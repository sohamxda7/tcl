#!/usr/bin/tclsh

#Take input from user
puts "Enter the month number (1-12):"
gets stdin month_num

#Do a check that a valid integer is placed & start the switch case

if {[string is integer -strict $month_num] && $month_num>=1 && $month_num<=12} {
switch $month_num { 
1 {puts "January"} 
2 {puts "February"} 
3 {puts "March"}
4 {puts "April"}
5 {puts "May"}
6 {puts "June"}
7 {puts "July"}
8 {puts "August"}
9 {puts "September"}
10 {puts "October"}
11 {puts "November"}
12 {puts "December"} } } else {
puts "Enter a valid number"}

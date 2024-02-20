#!/usr/bin/tclsh

#Write a TCL script to display the n terms of a harmonic series and their sum.

#Number check
while {true} {
puts "Enter the number:"
gets stdin usernum 
	if {[string is entier -strict $usernum] && $usernum > 0} {
		break
	} else {
		puts "Enter the number correctly!" 
		after 1000
		}
}

#init var
set result 0.0
set tcl_precision 4
puts "Output: 1"

#main calc

for {set denom 1} {$denom <= $usernum} {incr denom} {
	puts "Output: 1/$denom"
	
set result [expr {$result + 1.0 / $denom}]

}

#final_result_cleanup 

puts "Total sum: [expr {$result + 1.0}]"
unset result
unset usernum
unset denom

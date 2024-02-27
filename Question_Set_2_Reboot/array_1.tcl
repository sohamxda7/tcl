#!/usr/bin/tclsh

#Write a TCL script to read n number of values in an array and copy those elements which is odd number into another array.

#get array name from user
puts "Enter the array name:"
gets stdin user_array

#get array value iteration from user
puts "How many values do you want to enter in array?"
gets stdin iteration

#use for loop to rpeatedly get array keys and values from user
for {set loop 1} {$loop <= $iteration} {incr loop} {
	puts "Iteration No. $loop"
	puts "Enter name of the key:"
	gets stdin index
	puts "Enter value of the key:"
	gets stdin pair
	set  "${user_array}($index)" $pair
}

#get new array to copy odd ones to the new array
puts "Enter the new array name:"
gets stdin new_array

#caluclation to sort odd ones out

foreach {key value} [array get $user_array] {
	if {$value % 2 > 0} {
		set "${new_array}($key)" $value
			}
		}
			
#throw out final value with odd ones sorted in new array

puts [array get $new_array]

#result
if {0} {
Enter the array name:
fruits

How many values do you want to enter in array?
4

Iteration No. 1
Enter name of the key:
mango
Enter value of the key:
3

Iteration No. 2
Enter name of the key:
banana
Enter value of the key:
2

Iteration No. 3
Enter name of the key:
jackfruit
Enter value of the key:
2

Iteration No. 4
Enter name of the key:
apple
Enter value of the key:
5

Enter the new array name:
odd
mango 3 apple 5
}
		

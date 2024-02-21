#!/usr/bin/tclsh

array set fruits {
	apple 3
	banana 5
	orange 2
}

puts $fruits(banana)

puts "\n"

array set colors {
	red #FF0000
	green #00FF00
	blue #0000FF
}

foreach {key value} [array get colors] {
	puts "Key: $key, Value: $value"
}

puts "\n"

array set shoppingList {
	apples 5
	bananas 3
	milk 2
}

puts "[array names shoppingList]"
puts "[array size shoppingList]"

puts "\n"

array set shopping {
	apples 5
	bananas 3
	milk 2
}

set shopping(apples) 8
set shopping(bread) 1

foreach {key value} [array get shopping] {
	puts "Item: $key, Qty: $value"
}

puts "\n"

array set shop {
	apples 8
	bananas 3
	milk 2
	bread 1
}

unset shop(bread)
unset shop(bananas)

foreach {key value} [array get shop] {
	puts "Item: $key, Qty: $value"
}

puts "\n"

array set ex {
 ram 1
 sham 2
 lam 3
}

puts "[array get ex]"
 

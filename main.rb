puts 'Hello boys this is Mastermind board game i hope you enjoy it'

puts 'Please let us know your name'
name = gets.chomp

puts "#{name} enter code to guest: 4 colors space separated"
guest_variable = gets.chomp 
gest_array = guest_variable.split(" ")

p gest_array
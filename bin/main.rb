require_relative '../lib/code_maker.rb'
require_relative '../lib/code_braker.rb'
puts 'Hello boys this is Mastermind board game i hope you enjoy it'

puts 'Please let us know your name'
name = gets.chomp

puts "#{name} enter code to guest: 4 colors space separated"
guest_variable = gets.chomp 


player = CodeBraker.new(name)
player.create_array = guest_variable
p player.array
CodeMaker.scramble

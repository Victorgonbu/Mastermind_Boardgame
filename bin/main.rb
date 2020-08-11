require_relative '../lib/code_maker.rb'
require_relative '../lib/code_braker.rb'

puts 'Hello boys this is Mastermind board game i hope you enjoy it'
puts 'Colors available to play with; "blue", "red", "yellow", "green", "white", "black"'
puts 'Please let us know your name'
name = gets.chomp

puts "#{name} enter code to guest: 4 colors space separated"
guest_variable = gets.chomp

player = CodeBraker.new(name)
player.create_array = guest_variable
CodeMaker.scramble
ia = CodeMaker.new
ia.validate(player)

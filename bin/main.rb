require_relative '../lib/code_maker.rb'
require_relative '../lib/code_braker.rb'
validate = 1
puts 'Hello boys this is Mastermind board game i hope you enjoy it'

puts 'Please let us know your name'
name = gets.chomp

puts "#{name} enter code to guest: 4 colors space separated"
guest_variable = gets.chomp 


player = CodeBraker.new(name)
player.create_array = guest_variable
p CodeMaker.scramble
ia = CodeMaker.new

while validate < 13
ia.compare(player.array)
puts "red pegs: #{ia.red_pegs}, white_pegs #{ia.white_pegs}"

if ia.red_pegs == 4
    puts "Congratulations you guest it in #{validate} attempts"
    validate = 12
else 
    puts "please make yor next attempt #{validate}"
    player.create_array = gets.chomp
end
validate += 1
end

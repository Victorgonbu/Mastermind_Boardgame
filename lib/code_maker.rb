class CodeMaker
  @array = %w[blue red yellow green white black]
  @new_array = []

  attr_reader :red_pegs, :white_pegs

  def self.scramble
    @@array.shuffle!
    4.times do
      @@new_array << @@array.pop
    end
    @@new_array
  end

  def compare(array)
    @array = array
    @red_pegs = 0
    @white_pegs = 0

    @array.each_with_index do |element, index|
      @@new_array.each_with_index do |element2, index2|
        if element == element2 && index == index2
          @red_pegs += 1

        elsif element == element2
          @white_pegs += 1
        end
      end
    end
  end

  def validate(player)
    validate = 2
    while validate <= 13
      compare(player.array)
      puts "red pegs : #{red_pegs}, white pegs : #{white_pegs}"
      if red_pegs == 4
        puts "Congratulations you guest it in #{validate - 1} attempts"
        validate = 13
      elsif validate < 13
        puts "please make yor next attempt #{validate}"
        player.create_array = gets.chomp
      end
      if validate == 13 && red_pegs != 4
        puts "#{player.name} you ran out of turns :c, IA WINS. TOTAL POINTS: IA : 13 #{player.name} : 0"
      end
      validate += 1
    end
  end
end

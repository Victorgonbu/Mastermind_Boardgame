class CodeMaker
  @array = %w[blue red yellow green white black]
 
  attr_reader :red_pegs, :white_pegs, :new_array

  def scramble
    @new_array = []
    4.times do
      @array = %w[blue red yellow green white black].shuffle!
      @new_array << @array.pop
    end
    @new_array = ["blue", "blue", "blue", "red"]
  end

  def compare(array)
    @array_given = array
    @red_pegs = 0
    @white_pegs = 0
    replace = []
    replace.replace(self.new_array)

    replace.each_with_index do |element, index|
      @array_given.each_with_index do |element2, index2|
        if element == element2 && index == index2
          @red_pegs += 1
          @array_given[index2] = nil
          replace[index] = nil
          break
        end
      end
    end
    @array_given.delete_if {|element| element.nil? }
    replace.delete_if {|element| element.nil? }
    p "#{replace} replacement"
    p "#{@array_given} remaining"
    replace.each_with_index do |element, index|
      @array_given.each_with_index do |element2, index2|
        if element == element2 
          @white_pegs += 1
          @array_given[index2] = nil
          break
        end
      end
    end
    
    p " #{self.new_array} new array"

  
  end

  def validate(player)
    validate = 2
    while validate <= 13
      compare(player.array)
      puts "red pegs : #{red_pegs}, white pegs : #{white_pegs}"
      if red_pegs == 4
        puts "Congratulations you guest it in #{validate - 1} attempts
        secret code : #{self.new_array}"
        validate = 13
      elsif validate < 13
        puts "please make yor next attempt #{validate}"
        player.create_array = gets.chomp
      end
      if validate == 13 && red_pegs != 4
        puts "#{player.name} you ran out of turns :c, IA WINS. TOTAL POINTS: IA : 13 #{player.name} : 0
        secret code :  #{self.new_array}"
      end
      validate += 1
    end
  end
end

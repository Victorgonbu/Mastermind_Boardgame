class CodeMaker
  @array = %w[blue red yellow green white black]

  attr_accessor :red_pegs, :white_pegs, :new_array

  def scramble
    @new_array = []
    4.times do
      @array = %w[blue red yellow green white black].shuffle!
      @new_array << @array.pop
    end
    @new_array
  end

  def compare(array)
    @array_given = array
    @red_pegs = 0
    @white_pegs = 0
    @replace = []
    @replace.replace(new_array) # we don't want the original new_array to be override so we create a copy to work with#
    # Here we call a method looking for value matches and index matches#

    match_index_value

    # Here we remove all nil from both arrays (given and generated by IA)#
    erase_nil(@array_given)
    erase_nil(@replace)
    # Here we call another method looking for value matches#
    match_value
  end

  def match_index_value()
    @replace.each_with_index do |element, index|
      @array_given.each_with_index do |element2, index2|
        next unless element == element2 && index == index2

        self.red_pegs += 1
        @array_given[index2] = nil # every time we find a match value and match index we replace it for a nil value#
        @replace[index] = nil # every time we find a match value and match index we replace it for a nil value#
        break
      end
    end
  end

  def match_value()
    @replace.each_with_index do |element, _index|
      @array_given.each_with_index do |element2, index2|
        next unless element == element2

        self.white_pegs += 1
        @array_given[index2] = nil # every time we find a match value we replace it for a nil value#
        break
      end
    end
  end

  def erase_nil(array)
    array.delete_if(&:nil?)
  end

  def validate(player)
    validate = 2
    while validate <= 13
      compare(player.array)
      puts "red pegs : #{red_pegs}, white pegs : #{white_pegs}"
      if red_pegs == 4
        puts "Congratulations you guest it in #{validate - 1} attempts
        secret code : #{new_array}"
        validate = 13
      elsif validate < 13
        puts "please make yor next attempt #{validate}"
        player.create_array = gets.chomp
      end
      if validate == 13 && red_pegs != 4
        puts "#{player.name} you ran out of turns :c, IA WINS. TOTAL POINTS: IA : 13 #{player.name} : 0
        secret code :  #{new_array}"
      end
      validate += 1
    end
  end
end

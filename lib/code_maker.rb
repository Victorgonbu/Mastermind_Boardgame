class CodeMaker
    @@array = ["blue", "red", "yellow", "gray", "white", "black"]
    @@new_array = []
 
    attr_reader :red_pegs, :white_pegs

    def self.scramble
      @@array.shuffle!
      4.times do 
        @@new_array << @@array.pop
      end
      @@new_array
    end

    def  compare (array)
      @array = array
      @red_pegs = 0
      @white_pegs  = 0
      
      @array.each_with_index do |element, index|
        @@new_array.each_with_index do |element2, index2|
          if element == element2  && index == index2
            @red_pegs += 1

          elsif element == element2
           @white_pegs += 1
          end
        end 
      end
    end
end
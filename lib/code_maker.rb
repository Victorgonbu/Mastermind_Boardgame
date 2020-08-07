class CodeMaker
    @@array = ["blue", "red", "yellow", "gray", "white", "black"]
    @@new_array = []
    def self.scramble
      @@array.shuffle!
      4.times do 
        @@new_array << @@array.pop
      end
      @@new_array
    end
end
class CodeBraker
    attr_accessor :name, :array
    
    def initialize (name)
        self.name = name
    end

    def create_array=(string)
        self.array = string.split(" ")
    end

    



    

end
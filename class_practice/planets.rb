class Planet

    attr_reader :name, :size, :color
    attr_writer :size
    attr_accessor :size
    
    def initialize name, size, color="blue"  #blue is the default, but can be overwritten, default have to be last
        @name = name
        @size = size  # look at clamp for limiting to a range of values
        @color = color
        @spinning = true
    end
    
    # instance methods / reader / getter
    def name
        @name
    end
    
    # instance method / writer / setter
    def name= new_name
        @name = new_name
    end    

end
class Cards
    attr_accessor :color

    def initialize
        @color = color
    end
end

class NumberedCard < Cards
    attr_accessor :rank

    def initialize
        @rank = rank
    end
end

class ActionCard < Cards
    attr_accessor :action 

    def initialize
        @action = action 
    end
end
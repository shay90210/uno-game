class Cards
    attr_accessor :color

    def initialize(color)
        @color = color
    end
end

class NumberedCard < Cards
    attr_accessor :rank

    def initialize(color, rank)
        super(color)
        @rank = rank
    end
end

class ActionCard < Cards
    attr_accessor :action 

    def initialize(color, action)
        super(color)
        @action = action 
    end
end

red_zero = NumberedCard.new("red", 0)
pp red_zero.color
pp red_zero.rank
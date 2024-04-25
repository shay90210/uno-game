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

=begin
#NumberedCards 0-9 in the color red - DATA
red_zero = NumberedCard.new("red", 0)
red_one = NumberedCard.new("red", 1)
red_two = NumberedCard.new("red", 2)
red_three = NumberedCard.new("red", 3)
red_four = NumberedCard.new("red", 4)
red_five = NumberedCard.new("red", 5)
red_six = NumberedCard.new("red", 6)
red_seven = NumberedCard.new("red", 7)
red_eight = NumberedCard.new("red", 8)
red_nine = NumberedCard.new("red", 9)
=end

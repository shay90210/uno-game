class Card_Deck
    attr_accessor :cards

    def initialize
        @cards = generate_uno_deck
    end

    def shuffle_deck
        @cards.shuffle
    end

    def deal_deck
        puts "DEAL THE DECK!"
    end

    def draw_card
        @cards.pop
    end

    def generate_uno_deck
        cards = []

        (0..9).each do |rank|
            ["red", "green", "yellow", "blue"].each do |color|
                cards << NumberedCard.new(rank, color)
                cards << NumberedCard.new(rank, color)
    end
end

class Card
    attr_accessor :color

    def initialize(color)
        @color = color
    end
end

class NumberedCard < Card
    attr_accessor :rank

    def initialize(color, rank)
        super(color)
        @rank = rank
    end
end

class ActionCard < Card
    attr_accessor :action 

    def initialize(color, action)
        super(color)
        @action = action 
    end
end
class Card_Deck
    attr_accessor :cards

    def initialize
        @cards = generate_uno_deck
    end

    def shuffle_deck
       #@cards.shuffle
       #puts "SHUFFLE THE DECK!"
    end

    def deal_deck
        puts "DEAL THE DECK!"
    end

    def draw_card
        #@cards.pop
        puts "DRAW A CARD!"
    end

=begin
    << = shovel operator: This symbol appends elements into an array
    added empty cards array as the cards will need to be stored somewhere once the generate_uno_deck function is called
    (0..9) = represents each number that will be iterated on the card (range literal)
=end
    def generate_uno_deck
        cards = []

        (0..9).each do |rank|
            ["red", "green", "yellow", "blue"].each do |color|
                cards << NumberedCard.new(rank, color)
                cards << NumberedCard.new(rank, color)
            end
        end
        cards
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
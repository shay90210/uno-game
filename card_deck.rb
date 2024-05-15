class Card_Deck
    attr_accessor :cards

    def initialize
        @cards = generate_uno_deck
    end

    def shuffle_deck
       # once the cards are shuffled - see if there is a way to stack cards or confirm that the deck is ready
       @cards.shuffle
       print "There are #{@cards.length} cards in the deck!"
    end

    def draw_card
        if cards.empty?
            puts "Card deck is empty. There are no cards to draw!"
        else
          drawn_card = cards.shuffle!.pop
          cards.delete(drawn_card)
          return drawn_card
        end
    end

    # Code will need to show cards being dealt to players - can be cards distributed at once or one by one
    # Code should include checking if there are players and if there are cards. If there are none, then error should cancel out the game or loop back.
    # Figure out the steps in which the deck will need to be shuffled then deal
    def deal_deck
        shuffle_deck

        players.each do |player|
            number_of_cards.times do 
                player.add_card(cards.pop)
            end
        end
    end

        #<< = shovel operator: This symbol appends elements into an array
        #added empty cards array as the cards will need to be stored somewhere once the generate_uno_deck function is called
        #(0..9) = represents each number that will be iterated on the card (range literal)

    def generate_uno_deck
        cards = []

        (1..9).each do |rank|
            ["red", "green", "yellow", "blue"].each do |color|
                cards << NumberedCard.new(rank, color)
                cards << NumberedCard.new(rank, color)
            end
        end
        ["red", "green", "yellow", "blue"]. each do |color|
                cards << NumberedCard.new(0, color)
        end

        actions = ["Draw Two", "Reverse", "Skip"]
            actions.each do |action|
                ["red", "green", "yellow", "blue"].each do |color|
                    cards << ActionCard.new(color, action)
                    cards << ActionCard.new(color, action)
                end
            end

        wild_cards = []
        4.times do
            wild_cards << Card.new(nil)
        end
        
        cards += wild_cards
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

class WildCard < Card
    attr_accessor :action

    def initialize(color, action)
        super(color)
        @action = action
    end
end
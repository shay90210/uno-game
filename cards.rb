class Cards
    attr_reader :name, :color, :rank

    def initialize
        @name = name
        @color = color
        @rank = rank
    end

    #def numbered_color_card - card that will need to match color and number
    def numbered_color_card
    end

    #def reverse_card - card that will switch turns to previous player
    def reverse_card
    end

    #def skip_card - card that will skip next player
    def skip_card
    end

    #def draw_two_card - card that will make the next player draw two cards
    def draw_two_card
    end

    #def draw_four_card - card that will make next player draw four cards
    def draw_four_card
    end

    #wild_card - card that can allow current player to choose new color
    def wild_card
    end
end
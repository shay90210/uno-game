class Player
    attr_accessor :name, :hand, :score

    #Initializing the player class attributes
    def initialize
        @name = name
        @hand = []
        @score = 0
    end

    def get_score
        @score
    end
end
class Player
    attr_accessor :name, :hand, :score

    #Initializing the player class attributes
    def initialize
        @name = name
        @hand = []
        @score = 0
    end
    
    def get_player_name
        puts "Hello. What is your name?"
        player_name = gets.chomp.capitalize
        puts "Welcome to Uno #{self.player_name}!"
    end

    def get_hand_size
        @hand.size 
    end

    def get_score
        @score
    end
end
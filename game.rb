require_relative "cards"
require_relative "player"

class Game
    def begin_game
        puts "Welcome to Uno!"
        puts "What is your name?"
        player_name = gets.chomp.capitalize
        puts "\n"
        puts "Welcome #{self.name}!"
    end
end
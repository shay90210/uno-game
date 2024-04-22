class Game
    def begin_game(player)
        puts "Welcome to Uno!"
        puts "What is your name?"
        player.name = gets.chomp.capitalize
        puts "\n"
        puts "Welcome #{player.name}!"

        puts "Let's start the game!"
        puts "1. Shuffle Deck"
        puts "2. Deal Deck"
        puts "3. Quit"
        game_option = gets.chomp.to_i
    end
end


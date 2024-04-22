class Game
    def begin_game(player)
        #introduce player to game and obtain player name
        puts "Welcome to Uno!"
        puts "What is your name?"
        player.name = gets.chomp.capitalize
        puts "\n"
        puts "Welcome #{player.name}!"
        puts "\n"

        loop do
            #give player options on how to proceed with game
            puts "Let's start the game!"
            puts "1. Shuffle Deck"
            puts "2. Deal Deck"
            puts "3. Quit"

            #case statement to direct game in play of defined methods
            game_option = gets.chomp.to_i
            case game_option
            when 1
                shuffle deck
                break
            when 2
                deal_deck
                break
            when 3
                puts "\n"
                puts "We'll play again next time!"
                break
            else
                puts "\n"
                puts "Did you mean to choose a number between 1-3? Please choose again."
            end
        end
    end
end


class Game
    def begin_game(player, card_deck)
        #introduce player to game and obtain player name
        player.get_player_name

        loop do
            #give player options on how to proceed with game
            puts "Let's start the game!"
            puts "1. Shuffle Deck"
            puts "2. Deal Deck"
            puts "3. Quit"

            #case statement to direct game in play of defined methods
            game_option = gets.chomp.to_i
            puts "\n"
            case game_option
            when 1
                card_deck.shuffle_deck
                break
            when 2
                card_deck.deal_deck
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


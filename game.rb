class Game
    def begin_game(player)
        puts "Welcome to Uno!"
        puts "What is your name?"
        player.name = gets.chomp.capitalize
        puts "\n"
        puts "Welcome #{player.name}!"
    end
end


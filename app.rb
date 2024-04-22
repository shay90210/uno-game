require_relative "game"
require_relative "player"

game = Game.new
player = Player.new

game.begin_game(player)


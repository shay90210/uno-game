require_relative "game"
require_relative "player"
require_relative "card_deck"

game = Game.new
player = Player.new
card_deck = Card_Deck.new

game.begin_game(player, card_deck)


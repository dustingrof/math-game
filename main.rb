require "./game"
require "./question"
require "./player"

print "Please enter the first Player's name: "
player_1_name = gets.chomp
player_1 = Player.new(player_1_name)

print "Please enter the second Player's name: "
player_2_name = gets.chomp
player_2 = Player.new(player_2_name)

game = Game.new(player_1, player_2)

game.play



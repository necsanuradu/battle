require './lib/player.rb'

class Game

  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
  end

  def attack(player)
    player.health - 10
  end
end
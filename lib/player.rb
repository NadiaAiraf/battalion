class Player
  attr_reader :name, :hitpoints
  def initialize(name)
    @hitpoints = 100
    @name = name
  end

  def attack(player)
    player.reduce_hitpoints
  end

  def reduce_hitpoints
    @hitpoints -= 10
  end
end

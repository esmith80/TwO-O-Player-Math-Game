def class Player 
  attr_accessor :score, :turn, :name

  def initialize(name)
    @name = name
    @score = 3
  end

  def decrement_score(player)
    player.score -= 
  end



end
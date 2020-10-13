#Player 
#1. I need to have a player name, short name, score - Attributes
#2. I need to have methods which are as follows:
  #a. gives me the current score of the player
  #b. decrement the score if the player has given a wrong method
  #c. a method that returns me the name of the player
  
  #In Ruby, the last line of the function is always returned.

class Player

  attr_accessor :name, :short_name, :score

  def initialize(name, short_name)
    @name = name
    @short_name = short_name
    @score = 3
  end

  def decrement_score
    self.score = @score - 1 
  end

end
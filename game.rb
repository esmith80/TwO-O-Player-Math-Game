#Game Class
#1. I need to have attributes - Player Class, Question Class 
#2. I need to have methods which are as follows:
  #a. Method to start the Game
  #b. Method to check whether the Game has ended or not - By checking the score of the Player i.e. it should not be zero.
  #c. Method to display Which Player's turn is?
  #d. Final Method that shows the statistics of the Game at the end - Player wise.


require './question'

class Game
  attr_accessor :over

  def initialize
    @over = false
  end

  def ask_question?(current_player)
    # ask an addition question with two random numbers
    question = Question.new
    puts "#{current_player.name} #{question.generate}"
    player_answer = gets.chomp.to_i
    
    if question.right_answer == player_answer
      return true
    else
      return false
    end

  end

end

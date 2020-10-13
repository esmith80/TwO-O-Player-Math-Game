require './player'
require './game'

# start game (create two players, enter while loop)
p1 = Player.new("Player 1", "P1")
p2 = Player.new("Player 2", "P2")

score = "P1: #{p1.score} vs P2: #{p2.score}" #why didn't this work?

current_player = p1

game = Game.new()
# while game not over keep playing
while !game.over do

  puts "\n----- NEW TURN -----"

  answer = game.ask_question?(current_player)
  
  if answer == true
    puts "#{current_player.name}: YES! You are correct"
    puts "P1: #{p1.score}/3 vs P2: #{p2.score}/3"
  else 
    puts "#{current_player.name}: Seriously? No!"
    current_player.decrement_score    
    if current_player.score == 0
      game.over = true
    else
      puts "P1: #{p1.score}/3 vs P2: #{p2.score}/3"
    end

  end
  
  # switch player
  current_player = (current_player == p1) ? p2 : p1
 
end
# the current player will be the winner, since the last current player has a score of 0
puts "\n#{current_player.name} wins with a score of #{current_player.score}/3!"\
"\n\n----- GAME OVER -----"\
"\nGood bye!"


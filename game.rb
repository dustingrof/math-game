require "./question"

class Game
  attr_accessor :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end
  
  def play
    current_player = @player_1

    while @player_1.is_alive && @player_2.is_alive do 
      new_question = Question.new
      new_question.ask_question(current_player)
      puts "#{@player_1.name}: #{@player_1.current_lives}/3 vs #{@player_2.name}: #{@player_2.current_lives}/3" if @player_1.is_alive && @player_2.is_alive
      current_player = current_player == @player_1 ? @player_2 : @player_1
    end
    winner
    
  end
  
  def winner
    if @player_1.is_alive
      puts "#{@player_1.name} wins with a score of #{@player_1.current_lives}/3"
    else
      puts "#{@player_2.name} wins with a score of #{@player_2.current_lives}/3"
    end
  end

end

class Question
  def initialize
    @a = rand(1...30)
    @b = rand(1...30)
    @answer = @a + @b
  end
  
  def print_question
    "What does #{@a} plus #{@b} equal?"
  end
  
  def ask_question(current_player)
    puts "#{current_player.name}: #{print_question}" 
    player_answer = gets.chomp.to_i

    if player_answer != @answer
      puts "Seriously? No!"
      current_player.loose_a_life
    else
      puts "YES! You are correct."
    end
  end
    
end
class Player
  attr_accessor :name, :current_lives

  def initialize(name)
    @name = name
    @current_lives = 3
  end
    
  def loose_a_life
    @current_lives -= 1
  end

  def is_alive 
    @current_lives > 0
  end
end

# =begin
# The player will hold an id, name.
# Could have the score
# =end
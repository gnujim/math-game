class Player

  # life, score, which player(name)

  attr_reader :name, :score, :lives

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def lose_life
    @lives -= 1
  end

  def get_point
    @score += 1
  end

end

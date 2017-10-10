module MathGame
  class Player

    # life, score, which player(name)

    attr_reader :name, :lives

    def initialize(name)
      @name = name
      @lives = 3
    end

    def lose_life
      @lives -= 1
    end

    def dead?
      @lives === 0
    end

  end
end
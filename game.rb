module MathGame
  class Game

    # initialize players
    # current_player
    # current_turn

    def initialize
      @players = [
        Player.new('Player 1'),
        Player.new('Player 2')
      ]
      @current_player = 0
      @current_turn = Turn.new(current_player, Question.new)
    end

    def current_player
      @players[@current_player]
    end

    def run 
      
    end  

  end
end
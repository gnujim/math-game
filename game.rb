module MathGame
  class Game

    def initialize
      @players = [
        Player.new('Player 1'),
        Player.new('Player 2'),
        Player.new('Player 3')
      ]
    end

    def score_sheet(players)
      players.map { |player| "#{player.name}: #{player.lives}/3"}.join(" vs ")
    end

    def live_players
      @players.select { |player| !player.dead? }
    end

    def start
      until @players.length === 1 do
        @players.each.with_index do |player, index|
          # Create a turn for every player
          turn = Turn.new(player, Question.new)
          turn.start

          puts self.score_sheet(live_players)
          # if index !== @players.length - 1
          # We show new turn if there is at least two players still left in the game
          if live_players.count > 1
            puts "--------------- NEW TURN ---------------"
          end
          # @current_player = @current_player == 0 ? 1 : 0
        end
        # We remove dead players
        @players = live_players
      end
      winner = live_players
      puts "#{winner.name} wins the game!"
      puts '---------- GAME OVER -----------'
      puts 'Good bye!'
    end  
  end
end
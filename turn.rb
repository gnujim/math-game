module MathGame
  class Turn 

    def initialize(player, question)
      @player = player
      @question = question
    end

    def ask_question
      "#{@player.name}: #{@question.question}"
    end

    def start
      puts ask_question
      answer = gets.chomp.to_i
      if !@question.correct?(answer)
        @player.lose_life
        if @player.dead? 
          puts "---------- #{@player.name} IS OUT ----------"
        end
      end
    end

  end
end
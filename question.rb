module MathGame
  class Question

    def initialize
      @num1 = Random.rand(20)
      @num2 = Random.rand(20)
      @answer = @num1 + @num2
    end
    
    def question
      "What does #{num1} plus #{num2} equal?"
    end

    def correct?(answer)
      answer == @answer
    end

  end
end
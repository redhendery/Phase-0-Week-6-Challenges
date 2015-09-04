# Build a simple guessing game

# Create questions
# Create answers
# Check if answer right or wrong
# Tell user if right or wrong with "True" or "False"
# Store user answers
# Count number of questions
# Count number of answers
# End game once number of correct number of answer
# Tell users how many guesses it took

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if guess > @answer
      return :high
    elsif guess == @answer
      return :correct
    else gues < @answer
      return :low
    end
  end

  def solved?
    @guess == @answer
  end

  def GuessingGame#solved?(guess)
    game = GuessingGame.new(10)

    game.solved?


end




# DRIVER TESTS GO BELOW THIS LINE


# A Nested Array to Model a Bingo Board

# Pseudocode

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
# def letter
# => @letter = ["B", "I", "N", "G", "O"].shuffle.first
# => @ball = rand(1..100)

# Check the called column for the number called.
# => puts "The ball is #{@number} #{@ball}"

# If the number is in the column, replace with an 'x'
# => @bingo_board.collect! do |i|
# => if i.include?(@ball)
# => i[i.index(@ball)] = 'X'; i

# I think my code does this but I cannot get it to generate it with an 'X' to be sure

# Display a column to the console
  # => newgame = BingoBoard.new
# => puts newgame.letter
# => newgame.verify

# Display the board to the console (prettily)
  #fill in the outline here

# Your Solution

class BingoBoard

  def initialize
    # populates an 5x5 array with numbers 1-100
    # to make this accessible across your methods within this class, I made
    # this an instance variable. @ = instance variable
    @bingo_board = Array.new(5) {Array(5.times.map{rand(1..100)})}
  end

  def new_board
    @bingo_board.each{|row| p row}
  end

def letter
  @letter = ["B", "I", "N", "G", "O"].shuffle.first
  @ball = rand(1..100)
  puts "The ball is #{@letter} #{@ball}"
end

def verify
  @ball
  @bingo_board.each{|row| p row}
  @bingo_board.collect! do |i|
   if i.include?(@ball)
     i[i.index(@ball)] = 'X'; i
   else
     i
   end
  end
end

end

# DRIVER TESTS GO BELOW THIS LINE

newgame = BingoBoard.new
puts newgame.letter
newgame.verify
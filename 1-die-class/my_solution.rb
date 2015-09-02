# Die Class 1: Numeric

# Die class, rolls dice and returns random value between 1 & 6, if die returns value less than 1, create argument that forces to run again. This should go into the "Roll" method.

# However, I do not see why we would include this additional function as we can force Ruby to only generate a number between 1 & 6 with "1..6".

# Write your code below:

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Error")
    else
      @sides = sides
    end
  end

  def sides
    @sides
  end

  def roll
    1 + rand(@sides)
  end
end
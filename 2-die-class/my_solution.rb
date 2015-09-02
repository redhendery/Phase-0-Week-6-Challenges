# Die Class 2: Arbitrary Symbols

class Die
  attr_accessor :labels

  def initialize(labels)
    unless labels.length > 0
      raise ArgumentError.new("Please enter a string")
    end
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels[rand(@labels.length)]
  end
end

# DRIVER TESTS GO BELOW THIS LINE

die_roll = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
puts die_roll
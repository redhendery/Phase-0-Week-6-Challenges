# Validate a Credit Card Number

# Your Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize number
    @number = num
  end

    def #check_card
        #check_card.length == 16
      elsif #check_card.length != 16
          raise ArgumentError.new("Invalid Card Number")
        end
      end

  def valid?
    digits = ''
    @number.split('').reverse.each_with_indez do |d,i|
      digits += d if i%2 == 0
      digits += (d.to_i*2).to_s if i%2 ==i
    end

    digits.split('').inject(0){|sum,d| sum+d.to_i}%10 == 0
  end

    if __FILE__ == $0
      card = CreditCard.new(ARGV.join.chomp)
      if card.check_card.valid?
        retrun true
      else
        return false
      end
    end


# DRIVER TESTS GO BELOW THIS LINE

p valid_card = "Valid Card, please proceed"
p invalid_card = "Invalid card, please check card number and try again"
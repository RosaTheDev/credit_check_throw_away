require 'pry'
class CreditCheck
  attr_reader :card_number

  def initialize(card_number)
    # binding.pry
    @card_number = card_number.to_i.digits
  end

  def double_second_digits(argument_1)
    # binding.pry
     argument_1.map.with_index do |card_num, index|
      if index.odd?
        card_num * 2
      else
        card_num
      end
    end
  end

  def doubling_over_nine(doubling)
     doubling.map do |doubled_second_digit|
      if doubled_second_digit > 9
        doubled_second_digit - 9
      else
        doubled_second_digit
      end
    end
  end
  #
  def add_all_the_numbers(argument_2)
    # require'pry';binding.pry
    # doubled_digits = double_second_digits
    doubling_over_nine(argument_2).sum
  end
  #
  def checking_modulo(argument_3)

    # binding.pry
    end_card = add_all_the_numbers(argument_3) % 10
    if end_card == 0
      puts "Valid"
    else
      puts "Invalid Card Mother Fucker"
    end
    end_card
  end
end

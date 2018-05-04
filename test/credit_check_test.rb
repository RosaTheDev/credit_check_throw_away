require 'minitest/autorun'
require 'minitest/pride'
require'./lib/credit_check'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    skip
    new_card = CreditCheck.new("4929735477250543")

    assert_instance_of CreditCheck, new_card
  end

  def test_that_the_card_is_converted_to_an_array
 skip
    new_card = CreditCheck.new("4929735477250543")
    assert_equal [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4], new_card.card_number
  end

  def test_that_every_other_number_is_doubled
    skip
    new_card = CreditCheck.new("4929735477250543")
    assert_equal [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8], new_card.double_second_digits([3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4])
  end

  def  test_that_the_numbers_that_are_greater_than_nine_is_doubled
    skip
    new_card = CreditCheck.new("4929735477250543")
    assert_equal [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8], new_card.doubling_over_nine([3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8])
  end

  def test_that_all_numbers_are_added
    skip
    new_card = CreditCheck.new("4929735477250543")
    assert_equal 80, new_card.add_all_the_numbers([3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8])
  end

  def test_check_against_the_modulo_so_it_could_return_0
    skip

    new_card = CreditCheck.new("4929735477250543")
    assert_equal 0, new_card.checking_modulo([3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8])
  end

  def test_if_it_takes_discover_card
    # skip
    new_card = CreditCheck.new("342804633855673")
    assert_equal 0, new_card.checking_modulo([3, 14, 6, 10, 5, 16, 3, 6, 6, 8, 0, 16, 2, 8, 3])
  end

  def test_that_this_discover_card_is_wrong
  # skip
    new_card = CreditCheck.new("342801633855673")
    refute 0 == new_card.double_second_digits([3, 14, 6, 10, 5, 16, 3, 6, 6, 2, 0, 16, 2, 8, 3])
  end
end

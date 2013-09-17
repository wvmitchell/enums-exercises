gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class PickDesiredValuesTest < Minitest::Test
  def test_pick_even_numbers
    numbers = (1..10)
    evens = []
    numbers.each do |number|
      # write code here
      evens << number if number%2 == 0
    end
    assert_equal [2, 4, 6, 8, 10], evens
  end

  def test_pick_odd_numbers
    numbers = (1..10)
    odds = []
    numbers.each do |number|
      odds << number if number%2 == 1
    end
    assert_equal [1, 3, 5, 7, 9], odds
  end

  def test_pick_words_with_three_letters
    words = %w(pill bad finger cat blue dog table red)
    selected = []
    words.each do |word|
      selected << word if word.length == 3
    end
    assert_equal %w(bad cat dog red), selected
  end

  def test_pick_words_with_more_than_three_letters
    words = %w(pill bad finger cat blue dog table red)
    selected = []
    words.each do |word| 
      selected << word if word.length > 3
    end
    assert_equal %w(pill finger blue table), selected
  end

  def test_pick_words_ending_in_e
    words = %w(are you strike thinking belt piece warble sing pipe)
    selected = []
    words.each do |word|
      selected << word if word.end_with?('e')
    end
    assert_equal %w(are strike piece warble pipe), selected
  end

  def test_pick_words_ending_in_ing
    words = %w(drought singing hat shoehorning purposeful)
    selected = []
    words.each do |word|
      selected << word if word[-3..-1] == 'ing'
    end
    assert_equal %w(singing shoehorning), selected
  end
end


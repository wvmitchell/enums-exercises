gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FilterUnwantedValuesTest < Minitest::Test
  def test_remove_zeros
    numbers = [2, 93, 7, 0, 0, 1, 0, 31, 0, 368]
    filtered = []
    numbers.each do |number|
      filtered << number if number != 0
    end
    assert_equal [2, 93, 7, 1, 31, 368], filtered
  end

  def test_remove_vowels
    letters = "all your base are belong to us".chars
    # write code here
    remaining = []
    letters.each do |letter|
      remaining << letter unless ['y', 'a','e','i','o','u'].include?(letter)
    end
    assert_equal "ll r bs r blng t s", remaining.join
  end

  def test_remove_numbers_divisible_by_3
    numbers = (1..20)
    remaining = []
    numbers.each do |number|
      remaining << number unless number%3 == 0
    end
    expected = [1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20]
    assert_equal expected, remaining
  end

  def test_remove_words_with_more_than_three_letters
    words = %w(pill bad finger cat blue dog table red)
    remaining = []
    words.each do |word|
      remaining << word unless word.length > 3
    end
    assert_equal %w(bad cat dog red), remaining
  end

  def test_remove_words_ending_in_e
    words = %w(are you strike thinking belt piece warble sing pipe)
    remaining = []
    words.each do |word|
      remaining << word unless word.end_with?('e')
    end
    assert_equal %w(you thinking belt sing), remaining
  end

  def test_remove_words_ending_in_ing
    words = %w(drought singing hat shoehorning purposeful)
    remaining = []
    words.each do |word|
      remaining << word unless word[-3..-1] == 'ing'
    end
    assert_equal %w(drought hat purposeful), remaining
  end
end


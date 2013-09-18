gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class PickDesiredValuesTest < Minitest::Test
  def test_pick_even_numbers
    numbers = (1..10)
    evens = numbers.select do |number|
      number.even?
    end
    assert_equal [2, 4, 6, 8, 10], evens
  end

  def test_pick_odd_numbers
    numbers = (1..10)
    odds = numbers.select do |number|
      number.odd?
    end
    assert_equal [1, 3, 5, 7, 9], odds
  end

  def test_pick_words_with_three_letters
    words = %w(pill bad finger cat blue dog table red)
    selected = words.select do |word|
      word.length == 3
    end
    assert_equal %w(bad cat dog red), selected
  end

  def test_pick_words_with_more_than_three_letters
    words = %w(pill bad finger cat blue dog table red)
    selected = words.select do |word|
      word.length > 3
    end
    assert_equal %w(pill finger blue table), selected
  end

  def test_pick_words_ending_in_e
    words = %w(are you strike thinking belt piece warble sing pipe)
    selected = words.select do |word|
      word[-1] == 'e'
    end
    assert_equal %w(are strike piece warble pipe), selected
  end

  def test_pick_words_ending_in_ing
    words = %w(bring finger drought singing hat shoehorning purposeful)
    selected = words.select do |word|
      word[-3..-1] == 'ing'
    end
    assert_equal %w(bring singing shoehorning), selected
  end

  def test_select_all_colors
    words = %w(four red green blue pizza purple)
    colors = %w(red green blue purple)
    selected = words.select do |word|
      colors.include?(word)
    end
    assert_equal %w(red green blue purple), selected
  end

  def test_pick_dinosaurs
    animals = %w(tyrannosaurus teacup_poodle achillesaurus ankylosaurus qingxiusaurus)
    not_animal = 'teacup_poodle'
    selected = animals.select do |animal|
      animal != not_animal
    end
    assert_equal %w(tyrannosaurus achillesaurus ankylosaurus qingxiusaurus), selected
  end
end


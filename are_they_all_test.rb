gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AreTheyAllTest < Minitest::Test

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = numbers.all? do |num|
      num == 0
    end
    refute all_zeros
  end

  def test_all_zeros
    numbers = [0, 0, 0, 0, 0, 0, 0, 0]
    all_zeros = numbers.all? do |num|
      num == 0
    end
    assert all_zeros
  end

  def test_all_gone
    words = %w(gone gone gone gone gone gone gone)
    all_gone = words.all? do |word|
      word == 'gone'
    end
    assert all_gone
  end

  def test_not_all_gone
    words = %w(gone gone gone gone gone gone gone yepp)
    all_gone = words.all? do |word|
      word == 'gone'
    end
    refute all_gone
  end

  def test_all_empty
    words = ["", "", "", "", ""]
    all_empty = words.all? do |word|
      word == ''
    end
    assert all_empty
  end

  def test_not_all_empty
    words = ["full", "", "", "", "", ""]
    all_empty = words.all? do |word|
      word == ''
    end
    refute all_empty
  end

  def test_all_uppercase
    words = %w(DOUGHNUT CASH MAIN bOWl SMACK SAND)
    all_uppercase = words.all? do |word|
      word == word.upcase 
    end
    refute all_uppercase
  end

  def test_all_lies
    lies = [false, false, false, false]
    all_false = lies.all? do |lie|
      lie == false
    end
    assert all_false
  end

end


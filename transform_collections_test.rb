gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class TransformCollectionTest < Minitest::Test
  def test_capitalize
    names = %w(alice bob charlie)
    capitalized_names = []
    names.each do |name|
      # write code here
      capitalized_names << name.capitalize
    end
    assert_equal %w(Alice Bob Charlie), capitalized_names
  end

  def test_doubles
    numbers = [1, 2, 3, 4, 5]
    # write code here
    doubles = []
    numbers.each do |num|
      doubles << num*2
    end
    assert_equal [2, 4, 6, 8, 10], doubles
  end

  def test_squares
    numbers = [1, 2, 3, 4, 5]
    # write code here
    squares = []
    numbers.each do |num|
      squares << num*num
    end
    assert_equal [1, 4, 9, 16, 25], squares
  end

  def test_lengths
    names = %w(alice bob charlie david eve)
    # write code here
    lengths = []
    names.each do |name|
      lengths << name.length
    end
    assert_equal [5, 3, 7, 5, 3], lengths
  end

  def test_normalize_zip_codes
    numbers = [234, 10, 9119, 38881]
    # write code here
    zip_codes = []
    numbers.each do |num|
      zip_codes << num.to_s.rjust(5, '0')
    end
    assert_equal %w(00234 00010 09119 38881), zip_codes
  end

  def test_reverse
    names = %w(alice bob charlie david eve)
    # write code here
    backwards = []
    names.each do |name|
      backwards << name.reverse
    end
    assert_equal %w(ecila bob eilrahc divad eve), backwards
  end
end


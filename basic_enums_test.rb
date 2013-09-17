gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class BasicEnumsTest < Minitest::Test
  def test_many_times
    s = ''
    5.times do
      # write code here
      s << 'x'
    end
    assert_equal 'xxxxx', s
  end

  def test_simple_sum
    sum = 0
    numbers = [1, 2, 3, 4, 5]
    # write code here
    numbers.each do |num|
      sum += num
    end
    assert_equal 15, sum
  end
end


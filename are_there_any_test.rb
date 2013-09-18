gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AreThereAnyTest < Minitest::Test
  def test_has_a_zero
    numbers = [2, 9, 3, 1, 0]
    has_zero = numbers.any? do |number|
      number == 0
    end
    assert has_zero
  end

  def test_has_zeros
    numbers = [3, 1, 0, 7, 9, 0]
    has_zero = numbers.any? do |number| 
      number == 0
    end
    assert has_zero
  end

  def test_does_not_have_zero
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = numbers.any? do |number|
      number == 0
    end
    refute has_zero
  end

  def test_no_alice
    names = %w(chuck charlene cory chris carl)
    has_alice = names.any? do |name|
      name == 'alice'
    end
    refute has_alice
  end

  def test_has_alice
    names = %w(bill bob burton alice brandon)
    has_alice = names.any? do |name| 'alice'
      name == 'alice'
    end
    assert has_alice
  end

  def test_has_full_name
    names = ['will', 'tom', 'bob jones', 'sam' 'linda']
    test_has_full_name = names.any? do |name|
      name.match(/\w+ \w+/)
    end
    assert test_has_full_name
  end

  def test_no_monkeys
    animals = %w(elephants hippos jaguars pythons)
    has_monkeys = animals.any? do |animal|
      animal == 'monkey'
    end
    refute has_monkeys
  end
end


gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindFirstOneTest < Minitest::Test
  Thing = Struct.new(:adjective) do
    def weird?
      adjective == 'weird'
    end
  end

  def test_first_weird_thing
    thing1 = Thing.new('odd')
    thing2 = Thing.new('cool')
    thing3 = Thing.new('weird')
    thing4 = Thing.new('fun')
    thing5 = Thing.new('weird')

    things = [thing1, thing2, thing3, thing4, thing5]

    found = things.find do |thing|
      thing.weird?
    end
    assert_equal thing3.object_id, found.object_id
  end

  Unicorn = Struct.new(:color) do
    def pink?
      color == 'pink'
    end
  end

  def test_first_pink_unicorn
    unicorn1 = Unicorn.new('white')
    unicorn2 = Unicorn.new('sparkly')
    unicorn3 = Unicorn.new('purple')
    unicorn4 = Unicorn.new('pink')
    unicorn5 = Unicorn.new('pink')

    unicorns = [unicorn1, unicorn2, unicorn3, unicorn4, unicorn5]

    found = unicorns.find do |unicorn|
      unicorn.pink?
    end

    assert_equal unicorn4.object_id, found.object_id
  end

  Gnome = Struct.new(:type) do
    def roving?
      type == 'roving'
    end
  end

  def test_first_roving_gnome
    gnome1 = Gnome.new('forest')
    gnome2 = Gnome.new('roving')
    gnome3 = Gnome.new('snorkeling')
    gnome4 = Gnome.new('evil')
    gnome5 = Gnome.new('roving')

    gnomes = [gnome1, gnome2, gnome3, gnome4, gnome5]

    found = gnomes.find do |gnome|
      gnome.roving?
    end

    assert_equal gnome2.object_id, found.object_id

  end

  Squid = Struct.new(:size) do
    def giant?
      size == 'giant'
    end
  end

  def test_first_giant_squid
    squid1 = Squid.new('tiny')
    squid2 = Squid.new('inky')
    squid3 = Squid.new('giant')
    squid4 = Squid.new('deep sea')
    squid5 = Squid.new('giant')

    squiddies = [squid1, squid2, squid3, squid4, squid5]

    found = squiddies.find do |squid|
      squid.giant?
    end

    assert_equal squid3.object_id, found.object_id
  end

end


require ('minitest/autorun')
require_relative ('../river')

class RiverTest < MiniTest::Test

def setup
  fish = [@kasia, @basia, @zosia]

  @river = River.new("Amazon", fish)
  @kasia = Fish.new("Kasia")
  @basia = Fish.new("Basia")
  @zosia = Fish.new("Zosia")
  @elcia = Fish.new("Elcia")
  # @fish1 = River.new("John")
  # @fish2 = River.new("Mary")
  # @fish3 = River.new("Bob")
end

def test_river_name
  assert_equal("Amazon", @river.name())
end

def test_fish_count
  assert_equal(3, @river.fish_count())
end

def test_add_fish
  @river.add_fish(@elcia)
  assert_equal(4, @river.fish_count())
end

def test_fish_gone
  @river.fish_gone(@kasia)
    # @bus.drop_off(@passenger1)
  assert_equal(2, @river.fish_count())
end

# def fish_gone
#   assert_equal(2, @river.fish_count())
# end



# def test_add_fish
#   @river.add_fish(@fish1)
#   assert_equal(1, @river.fish_count())
# end

# def test_has_fish__found
#   assert_equal(true, @river.has_fish?("John"))
# end
#
# def test_has_fish__not__found
#   assert_equal(false, @river.has_fish?("Ola"))
# end
#
# def test_add_passenger()
#     @bus.pick_up(@passenger1)
#     assert_equal(1, @bus.passenger_count())
#   end



end

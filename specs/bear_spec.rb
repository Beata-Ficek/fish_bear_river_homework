require('minitest/autorun')
require_relative('../bear')


class BearTest < MiniTest::Test

def setup
  @bear = Bear.new("Ed", "polar bear")

  @fish1 = Fish.new("Kasia")
  @fish2 = Fish.new("Basia")
  @fish3 = Fish.new("Asia")
  @river = River.new("Wisla", [@fish1, @fish2, @fish3])
end

def test_bear_name
  assert_equal("Ed", @bear.name)
end

def test_bear_has_empty_food_array
  assert_equal(0,@bear.food_count)
end

def test_bear_can_take_fish_from_river
  @bear.take_fish_from_river(@river)
  assert_equal(1,@bear.food_count)
  assert_equal(2,@river.number_of_fishes)
end

def test_bear_cant_take_fish_from_empty_river
  river = River.new("Wisla", [])
  @bear.take_fish_from_river(river)
  assert_equal(0,@bear.food_count)
  assert_equal(0,river.number_of_fishes)
end

end

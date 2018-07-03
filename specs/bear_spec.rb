require('minitest/autorun')
require_relative('../bear')


class BearTest < MiniTest::Test

def setup
  @bear = Bear.new("Ed", "polar bear")
  @river = River.new("Amazon", ["Kasia", "Basia", "Asia"])
end

def test_bear_name
  assert_equal("Ed", @bear.name)
end

def test_bear_type
  assert_equal("polar bear", @bear.type)
end

def test_stomach_count
  assert_equal(0, @bear.stomach_count())
end

def test_bear_eats
  @bear.add_fish(@kasia)
  assert_equal(2, @bear.stomach_count())
end

def test_catch_fish(river)
  @bear.catch_fish(river)
  assert_equal(1, @stomach.stomach_count())
  assert_equal(2, @river.fish_count(@fish))
end
# def test_bear_stomach__full
#   assert_equal(true, @bear.stomach)
# end
#
# def test_bear_stomach__empty
#   assert_equal(false, @bear.stomach)
end

require('minitest/autorun')
require_relative('../fish')

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new()

  end

  def test_fish_name
    assert_equal("Judy", @fish1.name)
  end




end

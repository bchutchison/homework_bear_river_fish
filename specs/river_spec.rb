require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test


  def setup()

    @river = River.new("Amazon")
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Salmon")

  end

  def test_river_name
    assert_equal("Amazon", @river.name())
  end

  def test_number_of_fish
    assert_equal(0, @river.fish_count())
  end

  def test_remove_fish_from_river
    @river.add_fish_to_river(@fish1, @fish2)
    @river.remove_fish_from_river(@fish1)
    assert_equal(1, @river.fish_count())
  end

end

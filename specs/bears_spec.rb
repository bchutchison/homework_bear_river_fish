require('minitest/autorun')
require('minitest/rg')
require_relative('../bears.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

 def setup()

   @bears = Bear.new("Yogi", "Grizzly")
   @fish1 = Fish.new("Salmon")
   @fish2 = Fish.new("Salmon")
   @river = River.new("Amazon")

 end

 def test_bear_name()
   assert_equal("Yogi", @bears.name())
 end

 def test_bear_type()
   assert_equal("Grizzly", @bears.type())
 end

 def test_bear_fish_in_stomach()
   assert_equal(0, @bears.fish_in_stomach)
 end

 def test_add_fish_to_stomach()
   @bears.add_fish_to_stomach(@fish1)
   assert_equal(1, @bears.fish_in_stomach)
 end

 def test_eat_fish_from_river()
   @river.add_fish_to_river(@fish1, @fish2)
   @bears.eat_fish_from_river(@fish1, @river)
   assert_equal(1, @bears.fish_in_stomach)
   assert_equal(1, @river.fish_count)
 end

 def test_bear_roar()
   assert_equal("Roar", @bear.roar())
 end

end

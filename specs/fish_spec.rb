require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')


class FishTest < MiniTest::Test


 def setup()

@fish = Fish.new("Fish1")

 end

 def test_fish_name
   assert_equal("Fish1", @fish.name)
 end


end

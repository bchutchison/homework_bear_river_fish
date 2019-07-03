class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count()
    return @fish.size
  end

  def fish_array()
    return @fish
  end

  def add_fish_to_river(fish1, fish2)
    @fish.push(fish1, fish2)
  end

  def remove_fish_from_river(fish1)
    @fish.delete(fish1)
  end



end

class Bear

attr_reader :name, :type

def initialize(name, type)

  @name = name
  @type = type
  @stomach = []

end

def fish_in_stomach
  return @stomach.size
end

def add_fish_to_stomach(fish)
  @stomach.push(fish)
end

def eat_fish_from_river(fish, river)
  add_fish_to_stomach(fish)
  river.remove_fish_from_river(fish)
end

#**does not work in test. Have absolutely no idea why.
def roar()
  return "Roar"
end


end

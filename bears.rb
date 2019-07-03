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

def eat_fish_from_river(river)
  if river.fish_count > 0
    @stomach.push(river.fish_array[0])
    river.fish_array.delete_at(0)
  end
end

#**does not work in test. Have absolutely no idea why.
def roar()
  return "Roar"
end


end

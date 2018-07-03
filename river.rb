require_relative("fish")

class River

  attr_reader :name, :fish

  def initialize(name, fish)

    @name = name
    @fish = fish

  end

# def add_fish(fish)
#   @fish << fish
# end

# def has_fish?(fish)
#   return @fish.include?(fish)
# end


def fish_count()
  @fish.length
end

def add_fish(fish)
  @fish << fish
end

def fish_gone(fish)
  @fish.delete(fish)
end
# def pick_up(person)
#   @passengers << person
# end


end

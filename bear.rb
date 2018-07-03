require_relative("fish")
require_relative('river')

class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

def bear_eats()
  @stomach.add_fish(@fish)
end

def stomach_count()
  @stomach.length
end


# #
# def bear_full()
#   while @fish.length > 0
#     bear.eats(@fish.pop())
#   end
# end

def catch_fish(river)
  @stomach << river.fish.pop
end





end

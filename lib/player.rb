class Player
  DEFAULT_HEALTH = 60
  attr_reader :name
  attr_accessor :health

  def initialize(name = "computer")
    @name = name
    @health = DEFAULT_HEALTH
  end

end

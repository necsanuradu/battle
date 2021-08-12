class Play
  DEFAULT_HEALTH = 60
  attr_reader :health1, :health2, :default_health

  def initialize 
    @default_health = DEFAULT_HEALTH
    @health1 = DEFAULT_HEALTH
    @health2 = DEFAULT_HEALTH
  end
end
play = Play.new

require './Body.rb'

class Planet < Body

  def initialize(name, mass, day, year)
    super(name,mass)
    @day = day
    @year = year
  end

  def day
    return @day
  end

  def year
    return @year
  end

  def self.all(sys)
    bodies = sys.all
    planets = []

    bodies.each do |body|
      if body.class == Planet
        planets << body
      end
    end
    return planets
  end
end

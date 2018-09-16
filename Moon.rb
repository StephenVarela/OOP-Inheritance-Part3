require './Body.rb'

class Moon < Body


  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end

  def month
    return @month
  end

  def planet
    return @planet
  end

  def self.all(sys)
    bodies = sys.all
    moons = []

    bodies.each do |body|
      if body.class == Moon
        moons << body
      end
    end
    return moons
  end

end

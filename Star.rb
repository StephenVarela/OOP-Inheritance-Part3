require './Body.rb'

class Star < Body

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end

  def type
    return @type
  end

  def self.all(sys)
    bodies = sys.all
    stars = []

    bodies.each do |body|
      if body.class == Star
        stars << body
      end
    end
    return stars
  end

end

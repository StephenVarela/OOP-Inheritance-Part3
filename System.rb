require './Planet.rb'
require './Star.rb'
require './Moon.rb'

class System
  @@all_bodies = []

  def initialize
    @bodies = []
  end

  def add (body)
    if @bodies.include?(body)
      puts "This body already exists in this system!"
    else
      @bodies << body
      @@all_bodies << body #keeping track of all added galactic bodies
    end
  end

  def total_mass
    mass = 0
    @bodies.each do |body|
      mass += body.mass
    end
    return mass
  end

  def all
    return @bodies
  end

  def self.total_galactic_mass
    galactic_mass = 0
    @@all_bodies.each do |body|
      galactic_mass += body.mass
    end
    return galactic_mass
  end

end

require './System.rb'

sun = Star.new('Sun', 1.9885*(10**30),'G-Type')
mercury = Planet.new('Mercury', 3.285*(10**23), 1407, 88)
venus = Planet.new('Venus', 4.867*10**24, 2802, 225)
earth = Planet.new('Earth', 5.972*10**24, 24, 365)
mars = Planet.new('Mars' , 6.39*10**23, 24, 687)
jupiter = Planet.new('Jupiter',1.898*10**27, 9, 12*365)
saturn = Planet.new('Saturn', 5.683*10**26, 10, 29*365)
uranus = Planet.new('Uranus',8.681*10**25, 17, 84*365)
neptune = Planet.new('Neptune', 1.024*10**26, 16, 165*365)

moon = Moon.new('Earth Moon', 7.34767309*(10**22),30,earth)

solar_system = System.new

solar_system.add(sun)
solar_system.add(mercury)
solar_system.add(venus)
solar_system.add(earth)
solar_system.add(moon)
solar_system.add(mars)
solar_system.add(jupiter)
solar_system.add(saturn)
solar_system.add(uranus)
solar_system.add(neptune)


p solar_system.total_mass
solar_system.add(earth) ##should say this solar system already exists

puts "---------------------"
p Planet.all(solar_system) ##should return all planets in solar system
puts "---------------------"
p Star.all(solar_system) ##should return the sun in solar system
puts "---------------------"
p Moon.all(solar_system)


###Creating new solar system alpha century
alpha_centauri = System.new
centauri_a = Star.new('Alpha-Centauri-A', 1.1*(1.9885*(10**30)),'G-Type')
centauri_b = Star.new('Alpha-Centauri-B', 0.9*(1.9885*(10**30)),'G-Type')
centauri_c = Star.new('Proxima', 0.123*(1.9885*(10**30)),'Red Dwarf')
alpha_centauri.add(centauri_a)
alpha_centauri.add(centauri_b)
alpha_centauri.add(centauri_c)

puts "----Apha Centauri Mass------"
p alpha_centauri.total_mass
puts "----Solar System Mass------"
p solar_system.total_mass

puts "----Galactic System Mass------"
p System.total_galactic_mass

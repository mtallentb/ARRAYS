planet_list = ["Mercury", "Mars"]

# Use append() to add Jupiter and Saturn at the end of the array.
planet_list << "Jupiter"
planet_list << "Saturn"

# Use the concat() method to add another array of the last two planets in our solar system to the end of the array.
planet_list.concat(["Neptune", "Pluto"])

# Use insert() to add Earth, and Venus in the correct order.
planet_list.insert(1, "Venus")
planet_list.insert(2, "Earth")

# Use append() again to add Pluto to the end of the array.
planet_list << "Pluto"


# Now that all the planets are in the array, slice the array in order to get the rocky planets into a new list called rocky_planets.
rocky_planets = [planet_list.slice(0)]
rocky_planets << planet_list.slice(2)
rocky_planets << planet_list.slice(3)
rocky_planets << planet_list.slice(7)
puts "Rocky Planets: #{rocky_planets} "


# Being good amateur astronomers, we know that Pluto is now a dwarf planet, so use the pop operation to remove it from the end of planet_list.
planet_list.pop()
puts "Planet List: #{planet_list}"


# Create another array containing arrays where each array will hold the name of a spacecraft that we have launched, and the names of the planet(s) that it has visited, or landed on. (e.g. ['Cassini', 'Saturn']).
space_missions = [
    ['Voyager 2', 'Neptune'],
    ['Juno', 'Jupiter'],
    ['Pathfinder', 'Mars'],
    ['Cassini', 'Saturn'],
    ['Apollo 11', 'Earth'],
    ['New Horizons', 'Pluto']
]


# Iterate over your array of planets, and inside that loop, iterate over the array of arrays. Print, for each planet, which satellites have visited.
for planet in planet_list
    for mission in space_missions
        if planet == mission[1]
            puts "#{mission[1]} was visited by #{mission[0]}"
        end
    end
end   
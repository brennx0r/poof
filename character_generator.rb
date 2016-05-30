	def character_name()
		nameArray = IO.readlines("names.txt")
		randomize_array = rand(0..10)
		return nameArray[randomize_array].chomp	
    end

	def character_race()
		raceArray = IO.readlines("race.txt")
		randomize_array = rand(0..8)
		return raceArray[randomize_array].chomp
	end

	def character_class()
		classArray = IO.readlines("class.txt")
		randomize_array = rand(0..7)
		return classArray[randomize_array].chomp
	end

n = character_name
r = character_race
c = character_class


puts "You are a "+n.to_s+", "+r.to_s+" "+c.to_s+"!"
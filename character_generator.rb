	def character_gender
    	if @gender == "M"  
    		return "male"
    	elsif
    		@gender == "F"
    		return "female"
    	elsif
    		@gender == "NB"
    		return "nonbinary" 
    	end
    end	

    def character_name(character_gender)
		nameArray = IO.readlines(character_gender.to_s+"_names.txt")
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

puts "What is your character's desired gender? [Valid options: M, F, or NB]"
@gender = gets.chomp

g = character_gender
n = character_name(character_gender)
r = character_race
c = character_class

puts "You are "+n.to_s+", the "+g.to_s+" "+r.to_s+" "+c.to_s+"!"

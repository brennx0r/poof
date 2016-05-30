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
		return nameArray[randomize_array].chomp.to_s
    end

	def character_race()
		raceArray = IO.readlines("race.txt")
		randomize_array = rand(0..8)
		return raceArray[randomize_array].chomp.to_s
	end

	def character_age(character_race)
		if character_race.to_s == "Dwarf"
			return rand(50..350).to_s
		#	
		# The Elf case isn't going to match anything for now 
		# Will need to write up Issue about this.	
		#
		elsif character_race.to_s == "Elf"
			return rand(100..750).to_s	
		elsif character_race.to_s == "Halfling"
			return rand(20..250).to_s
		elsif character_race.to_s == "Gnome"
			return rand(30..500).to_s
		elsif character_race.to_s == "Half-Elf"
			return rand(20..180).to_s
		else
			# Return age values applicable to Humans, 
			# Dragonborn, Half-Orc, Tiefling
			return rand(15..80).to_s
		end
	end

	def character_height(character_race)
		if character_race.to_s == "Dwarf"
			feet = rand(4..5).to_s
		elsif character_race.to_s == "Halfling"
			feet = rand(3..4).to_s
		elsif character_race.to_s == "Dragonborn"
			feed = rand(6..7).to_s	
		else
			# Return valid heights for Humans, Elves, 
			# Teiflings, etc.
			feet = rand(5..6).to_s
		end
		inches = rand(0..11).to_s
		return feet+"'"+inches+"\""
	end

	def character_class()
		classArray = IO.readlines("class.txt")
		randomize_array = rand(0..7)
		return classArray[randomize_array].chomp.to_s
	end

puts "What is your character's desired gender? [Valid options: M, F, or NB]"
@gender = gets.chomp

g = character_gender
n = character_name(character_gender)
r = character_race
c = character_class
a = character_age(character_race)
h = character_height(character_race)

puts ""
puts ""
puts ""
puts "You are "+n+", the "+g+" "+r+" "+c+"!"
puts ""
puts "------------------------------------------------------------"
puts ""
puts "Vital Statistics"
puts "------------------------------------------------------------"
puts "Height: "+h
puts "Weight: "
puts "Age: "+a
puts "Speed: "
puts ""
puts "------------------------------------------------------------"
puts "Backstory"
puts "------------------------------------------------------------"
puts "Ideals: "
puts "Bonds: "
puts "Flaws: "
puts ""
puts "------------------------------------------------------------"
puts "Abilities"
puts "------------------------------------------------------------"
puts "Strength: "
puts "Dexterity: "
puts "Constitution: "
puts "Intelligence: "
puts "Wisdom: "
puts "Charisma: "
puts "------------------------------------------------------------"


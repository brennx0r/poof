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
		name_array = IO.readlines(character_gender.to_s+"_names.txt")
		randomize_array = rand(0..10)
		return name_array[randomize_array].chomp.to_s
    end

	def character_race()
		race_array = IO.readlines("race.txt")
		randomize_array = rand(0..8)
		return race_array[randomize_array].chomp.to_s
	end

	def character_age(character_race)
		if character_race.to_s == "Dwarf"
			return rand(50..350).to_s
		#	
		# The Elf case isn't going to match anything.
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
			feet = rand(4..5)
		elsif character_race.to_s == "Halfling"
			feet = rand(3..4)
		elsif character_race.to_s == "Dragonborn"
			feed = rand(6..7)	
		else
			# Return valid heights for Humans, Elves, 
			# Teiflings, etc.
			feet = rand(5..6)
		end
		inches = rand(0..11)
		return feet.to_s+"'"+inches.to_s+"\""
	end

	def character_weight(character_race)
		if character_race.to_s == "Dwarf"
			weight = rand(130..150)
		elsif character_race.to_s == "Halfling"
			weight = rand(35..45)
		elsif character_race.to_s == "Dragonborn"
			weight = rand(220..260)
		elsif character_race.to_s == "Half-Orc"
			weight = rand(180..250)
		elsif character_race.to_s == "Gnome"
			weight = rand(35..45)
		else
			# Return average weight for adult Humans, Elves, etc.
			weight = rand(130..250)
		end
			return weight.to_s+" lbs"
	end

	def character_speed(character_race)
		if character_race.to_s == "Dwarf"
			speed = "25"
		elsif character_race.to_s == "Halfling"
			speed = "25"
		elsif character_race.to_s == "Gnome"
			speed = "25"
		else 
			# Return speed for everyone else
			speed = "30"
			return speed.to_s+" feet"
		end
	end

	def character_class()
		class_array = IO.readlines("class.txt")
		randomize_array = rand(0..7)
		return class_array[randomize_array].chomp.to_s
	end

	def character_alignment()
		alignment_array = IO.readlines("alignment.txt")
		randomize_array = rand(0..8)
		return alignment_array[randomize_array].chomp.to_s
	end

	def character_background()
		background_array = IO.readlines("background.txt")
		randomize_array = rand(0..12)
		return background_array[randomize_array].chomp.to_s
	end

	def character_personality(character_background)
	 	personality_array = IO.readlines(character_background.to_s+"/personality.txt")
	 	randomize_array = rand(0..7)
	 	return personality_array[randomize_array].chomp.to_s
	end

	def character_ideals(character_background)
	 	ideals_array = IO.readlines(character_background.to_s+"/ideals.txt")
	 	randomize_array = rand(0..5)
	 	return ideals_array[randomize_array].chomp.to_s
	end

	def character_bonds(character_background)
	 	bonds_array = IO.readlines(character_background.to_s+"/bonds.txt")
	 	randomize_array = rand(0..5)
	 	return bonds_array[randomize_array].chomp.to_s
	end

	def character_flaws(character_background)
	 	flaws_array = IO.readlines(character_background.to_s+"/flaws.txt")
	 	randomize_array = rand(0..5)
	 	return flaws_array[randomize_array].chomp.to_s
	end

	def roll_ability()
		rollArray = []
		4.times {
			roll = rand(1..6)
			rollArray << roll
		}
		#Sort the array of rolls
		sortedArray = rollArray.sort
		# Remove the lowest roll, which should be 
		# sorted as the 0th index in the array
		sortedArray.delete_at(0)
		# Add the rest!
		grand_total = rollArray[0].to_i+rollArray[1].to_i+rollArray[2].to_i+rollArray[3].to_i
		return grand_total.to_s
	end

puts "What is your character's desired gender? [Valid options: M, F, or NB]"
@gender = gets.chomp

g = character_gender
n = character_name(character_gender)
r = character_race
c = character_class
age = character_age(character_race)
h = character_height(character_race)
w = character_weight(character_race)
s = character_speed(character_race)
align = character_alignment
b = character_background
p = character_personality(character_background)
i = character_ideals(character_background)
bonds = character_bonds(character_background)
f = character_flaws(character_background)
str = roll_ability
dex = roll_ability
con = roll_ability
int = roll_ability
wis = roll_ability
cha = roll_ability

puts ""
puts ""
puts ""
puts "You are "+n+", the "+g+" "+r+" "+c+"!"
puts "------------------------------------------------------------"
puts "Vital Statistics"
puts "------------------------------------------------------------"
puts "Height:    "+h
puts "Weight:    "+w
puts "Age:       "+age
puts "Speed:     "+s
puts "Alignment: "+align
puts ""
puts "------------------------------------------------------------"
puts "Backstory"
puts "------------------------------------------------------------"
puts "Background:   "+b
puts "Personality:  "+p
puts "Ideals:       "+i
puts "Bonds:        "+bonds
puts "Flaws:        "+f
puts ""
puts "------------------------------------------------------------"
puts "Abilities"
puts "------------------------------------------------------------"
puts "Strength:      "+str
puts "Dexterity:     "+dex
puts "Constitution:  "+con
puts "Intelligence:  "+int
puts "Wisdom:        "+wis
puts "Charisma:      "+cha
puts "------------------------------------------------------------"


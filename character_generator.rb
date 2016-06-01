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
			feet = rand(6..7)	
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

	def modifier(ability)
		if ability <= "1"
			return "-5"
		elsif ability == "2" || ability == "3"
			return "-4"
		elsif ability == "4" || ability == "5"
			return "-3"
		elsif ability == "6" || ability == "7"
			return "-2"
		elsif ability == "8" || ability == "9"
			return "-1"
		elsif ability == "10" || ability == "11"
			return "0"
		elsif ability == "12" || ability == "13"
			return "+1"
		elsif ability == "14" || ability == "15"
			return "+2"
		elsif ability == "16" || ability == "17"
			return "+3"
		elsif ability == "18" || ability == "19"
			return "+4"
		elsif ability == "20" || ability == "21"
			return "+5"
		else return "dunno"
		end
	end

puts "What is your character's desired gender? [Valid options: M, F, or NB]"
@gender = gets.chomp

gender = character_gender
name = character_name(character_gender)
race = character_race
klass = character_class
age = character_age(race)
height = character_height(race)
weight = character_weight(race)
speed = character_speed(race)
alignment = character_alignment
background = character_background
personality = character_personality(background)
ideals = character_ideals(background)
bonds = character_bonds(background)
flaws = character_flaws(background)
str = roll_ability
dex = roll_ability
con = roll_ability
int = roll_ability
wis = roll_ability
cha = roll_ability
str_mod = modifier(str)
dex_mod = modifier(dex)
con_mod = modifier(con)
int_mod = modifier(int)
wis_mod = modifier(wis)
cha_mod = modifier(cha)

puts ""
puts ""
puts ""
puts "POOF!"
puts "You are "+name+", the "+gender+" "+race+" "+klass+"!"
puts "------------------------------------------------------------"
puts "Vital Statistics"
puts "------------------------------------------------------------"
puts "Height:    "+height
puts "Weight:    "+weight
puts "Age:       "+age
puts "Speed:     "+speed
puts "Alignment: "+alignment
puts ""
puts "------------------------------------------------------------"
puts "Backstory"
puts "------------------------------------------------------------"
puts "Background:   "+background
puts "Personality:  "+personality
puts "Ideals:       "+ideals
puts "Bonds:        "+bonds
puts "Flaws:        "+flaws
puts ""
puts "------------------------------------------------------------"
puts "Abilities"
puts "------------------------------------------------------------"
puts "Strength:      "+str+" ("+str_mod+")"
puts "Dexterity:     "+dex+" ("+dex_mod+")"
puts "Constitution:  "+con+" ("+con_mod+")"
puts "Intelligence:  "+int+" ("+int_mod+")"
puts "Wisdom:        "+wis+" ("+wis_mod+")"
puts "Charisma:      "+cha+" ("+cha_mod+")"
puts "------------------------------------------------------------"



	def character_race()
		r = ["Human","Elf","Dragonborn","Dwarf","Halfling","Gnome","Half-elf","Half-orc","Tiefling"]
		random_array = rand(0..8)
		return r[random_array]
	end

	def character_class()
		c = ["Barbarian","Bard","Druid","Monk","Paladin","Ranger","Sorcerer","Warlock"]
		random_array = rand(0..7)
		return c[random_array]
	end


a = character_race
b = character_class

puts "You are a "+a.to_s+" "+b.to_s+"!"
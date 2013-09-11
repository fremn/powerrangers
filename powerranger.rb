############# MODELS ###########
module FightMoves
	def punch(person_to_punch)
		puts "#{@name} has #{@caffination} caffination"
		if @strength > 5
			person_to_punch.scream
			person_to_punch.run
			person_to_punch.scream
			@caffination = @caffination - rand(3.0...9.0)
			puts "#{@name} has #{@caffination} caffine."
		else
			puts "#{@name} missed"
		end
	end
end

##### CLASSES #####

class Person
	attr_accessor :name, :caffination
	
	def initialize(name)
		@name = name
		@caffination = 36.0
	end


	def run
		@caffination = @caffination/3.0
	end

	def scream
		puts "My name is #{@name} I have a caffine level of #{@caffination}."
	end

	def drink_coffee
		@caffination += 3.0
	end

	def dies
		@caffination = 0
	end

end

#_______________end of Person Class_____________

class PowerRanger < Person
	attr_accessor :strength, :color

	include FightMoves

	def initialize(name, color)
		@name = name
		@caffination = 36.0
		@color = color
		@strength = (color.length * name.length) * (1 - rand())
	end

	def check
		puts @color
		puts @strength
	end

	def use_megazord(person_to_punch)
		punch(person_to_punch)
		puts "#{@name} used megazord!!!"
		person_to_punch.run
		person_to_punch.scream
	end
end

########## NINJA ###############

class EvilNinja < Person
	include FightMoves
	attr_accessor :evilness 
	def initialize(name)
		@name = name
		@evilness = rand(3...21)
		@strength = name.length * rand(1...9)
		@caffination = 46.0
	end

	def cause_mayhem(to_which_person)
		to_which_person.dies 
	end 

end






#####################--- tests
alex = PowerRanger.new("alex", "red")
molly = Person.new("molly")
pirate = EvilNinja.new("pirate")

alex.punch(pirate)
pirate.punch(alex)

# molly.scream

# molly.run
# molly.run
# molly.run
# molly.scream
# molly.run
# molly.drink_coffee
# molly.scream

#alex.use_megazord(molly)





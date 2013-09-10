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

	def hit
		@caffination
	end
end

#_______________end of Person Class_____________

molly = Person.new("molly")


# molly.scream

# molly.run
# molly.run
# molly.run
# molly.scream
# molly.run
# molly.drink_coffee
# molly.scream


class PowerRanger < Person
	attr_accessor :strength, :color
	
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

	def punch(person_to_punch)
		puts "you have #{@caffination}"
		if @strength > 5
			person_to_punch.scream
			person_to_punch.run
			person_to_punch.scream
			@caffination = @caffination - rand(3.0...9.0)
		else
			puts "you missed"
		end
	end
	
	def use_megazord(person_to_punch)
		punch(person_to_punch)
		puts "#{@name} used megazord!!!"
		person_to_punch.run * 5000
		person_to_punch.scream
	end
end

alex = PowerRanger.new("alex", "red")


alex.use_megazord(molly)

class EvilNinja
end

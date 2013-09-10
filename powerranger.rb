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
		@caffination += 3
	end

end

#_______________end of Person Class_____________

molly = Person.new(:molly)

molly.scream

molly.run
molly.run
molly.run
molly.scream
molly.run
molly.drink_coffee
molly.scream


class PowerRanger
end

class EvilNinja
end

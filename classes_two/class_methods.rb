# Class method - method invoked on the class rather than an instance
# Class methods can be called on a class even if instances dont exist

class Vehicle
	attr_reader :wheels, :passengers

	def initialize(wheels,passengers)
		@wheels = wheels
		@passengers = passengers
	end
	puts self
	#not great would have to change every mehod, if changed class name
    #def Vehicle.hello 	
		def self.hello
			puts "I'm a  class method"
		end

		def self.car
			self.new(4, 6)
		end

		def self.truck 
			self.new(18, 2)
		end

end

#common car can we do something!

# Vehicle.new(4, 6)
# Vehicle.new(4, 6)
# Vehicle.new(4, 6)
# Vehicle.new(4, 6)
# Vehicle.new(4, 6)

car = Vehicle.car
p car.wheels
p car.passengers

truck = Vehicle.truck
p truck.wheels
p truck.passengers


Vehicle.hello

# A module is a "toolbox" of related classes, methods, and/or constants
# Module organize functionality into containers,
# similar to directories on your computer
# Modules are not classs; we cannot create " instances" of a module

module LengthConversions 
 #def LengthConversions.miles_to_feet(miles_to_feet)
  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
  #  feet = self.miles_to_feet(miles)
  # ruby knows
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimers(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end

puts LengthConversions.miles_to_feet(100)
puts LengthConversions.miles_to_inches(100)
puts LengthConversions.miles_to_centimers(100)
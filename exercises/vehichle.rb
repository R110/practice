class Bike
  attr_accessor :wheels, :noise
  def initialize
    @wheels = 2
    @noise = "boom"
  end
end

class Truck
  attr_accessor :wheels, :noise
  def initialize
    @wheels = 4
    @noise = "baboom"
  end
end

class Unicycle
  attr_accessor(:wheels, :noise)
  def initialize
    @wheels = 1
    @noise = "silence"
  end
end

class Countwheels
  def countwheels(vehicles)
    vehicles.reduce{|a,b| a.wheels + b.wheels }
  end
end

class Noisemaker
  def makenoises(vehicles)
    vehicles.each do |vehicle|
       puts vehicle.noise
     end
  end
end

vs = [Unicycle.new, Bike.new, Truck.new]

Noisemaker.new.makenoises(vs)

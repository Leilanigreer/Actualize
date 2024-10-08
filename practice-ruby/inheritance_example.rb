
# Use inheritance to DRY up the classes. Note - a car is NOT in a type of bicycle, and a bicycle is NOT a type of car!
# • To test it, create a bicycle and car instance from your newly modified classes (you can create them at the bottom of your file). First, have them accelerate. Then, make sure a bike can “Ring ring!” and a car “Beeeeeeep!”



class Action
  attr_reader :speed
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end



class Car < Action
  # def initialize
  #   @speed = 0
  #   @direction = 'north'
  # end

  # def brake
  #   @speed = 0
  # end

  # def accelerate
  #   @speed += 10
  # end

  # def turn(new_direction)
  #   @direction = new_direction
  # end

  def honk_horn
    puts "Beeeeeeep!"
  end
end



class Bike < Action
  # def initialize
  #   @speed = 0
  #   @direction = 'north'
  # end

  # def brake
  #   @speed = 0
  # end

  # def accelerate
  #   @speed += 10
  # end

  # def turn(new_direction)
  #   @direction = new_direction
  # end

  def ring_bell
    puts "Ring ring!"
  end
end


#### This is what I was missing in testing the code. Asign a variable to the initialize method. It requires no inputs.

car = Car.new
car.honk_horn

# added attribute reader for speed above. 
pp car.speed
car.accelerate
pp car.speed
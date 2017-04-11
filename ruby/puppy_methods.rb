class Puppy

	def initialize
		puts "Initializing new Puppy instance..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	puts "Woof!" * int
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_years)
  	human_years * 7
  end

  def play_dead
  	puts "-silence-"
  end

end

## DRIVER CODE
fido = Puppy.new
fido.fetch("ball")

fido.speak(5)
fido.roll_over
p fido.dog_years(3)
fido.play_dead

## RELEASE 2
class Car

	def initialize
    puts "New Car rolling off the line..."
	end

  def runs
  	puts "Vroom Vroom"
  end

  def breaks
    puts "Sputter Choke Gasp"
  end

end

## DRIVER CODE

list_of_cars = []
counter = 1
while counter < 51 do
  list_of_cars << Car.new
  # list_of_cars[counter - 1].runs
  # list_of_cars[counter - 1].breaks
	counter += 1
end

list_of_cars.each do |car| 
 	car.runs 
 	car.breaks
end

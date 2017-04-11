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
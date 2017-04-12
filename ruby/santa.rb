class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @age = rand(0..140)
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    p "Initializing Santa instance ..."
  	p "This santa identifies as #{gender} with an ethnicity of #{ethnicity}."
  end
  
  def speak
  	p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
  	p "That was a good #{cookie}!"
  end

  def celebrate_birthday
  	@age += 1
  end

  def get_mad_at(bad_reindeer)
    @reindeer_ranking.delete(bad_reindeer)
    @reindeer_ranking.push(bad_reindeer)
  end

end

# roger = Santa.new
# roger.speak
# roger.eat_milk_and_cookies("thin mint")

santas = []
example_genders = ["male", "female", "bi-gender", "gender fluid", "prefer not to state", "genderless", "androgyne", "genderqueer", "hijra", "pangender", "queer hetero"]
example_ethnicities = ["prefer not to state", "Caucasian", "African", "Asian", "Latin American", "India", "Chinese", "Russian", "Egyptian", "Georgians", "Kurdish", "Nigerian"]

example_genders.length.times { |i| santas << Santa.new(example_genders[i], example_ethnicities[i]) }

p santas[1].celebrate_birthday

p santas[0].get_mad_at("Prancer")

p santas[2].gender = example_genders[3]
p santas[3].age

100.times do |santa|
	santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	p "This santa is the ripe ol' age of #{santa.age}"
end
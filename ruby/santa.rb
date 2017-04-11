class Santa

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
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

  # GETTER METHODS
  def age
  	@age
  end

  def ethnicity
  	@ethnicity
  end

  # SETTER METHODS
  def gender=(new_gender)
  	@gender = new_gender
  end
end

# roger = Santa.new
# roger.speak
# roger.eat_milk_and_cookies("thin mint")

santas = []
example_genders = ["male", "female", "bi-gender", "gender fluid", "prefer not to state"]
example_ethnicities = ["prefer not to state", "Caucasian", "African", "Asian", "Latin American"]

example_genders.length.times { |i| santas << Santa.new(example_genders[i], example_ethnicities[i]) }

p santas[1].celebrate_birthday
p santas[1].celebrate_birthday
p santas[1].ethnicity

p santas[0].get_mad_at("Prancer")
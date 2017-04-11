# module Shout
#   def self.yell_angrily(words)
#   	words.upcase + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + " mmmkay" + " :)"
#   end
# end

# p Shout.yell_angrily("Just what are you doing on the counter?")
# p Shout.yelling_happily("Oh, I see what you are after now.")

module Shout
  def yell_angrily(words)
  	words.upcase + "!!!" + " :("
  end

  def yelling_happily(words)
  	words + " purrrrr" + " :)"
  end
end

class Human
	include Shout
end

class Cat
	include Shout
end

joe = Human.new
yy = Cat.new

p "Joe says,"
p joe.yell_angrily("Just what are you doing on the counter?")

p "Y-Y! responds,"
p yy.yell_angrily("roar")
p yy.yell_angrily("I gotta look out the window")

p "Joe says,"
p joe.yelling_happily("I can't stay mad at you.")

p "Y-Y! says,"
p yy.yelling_happily("meow")
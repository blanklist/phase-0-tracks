class Game

  attr_accessor :correct_word, :user1_stats, :user2_stats
  attr_reader :number_of_guesses

	def initialize(correct_word)
		@correct_word = correct_word
		@in_progress_word = "_" * correct_word.length
		@number_of_guesses = correct_word.length * 2
		@user1_stats = {is_dm: true, guesses: 0, available_guess: 0}
		@user2_stats = {is_dm: false, guesses: 0, available_guess: 0}
	end





end









first_round = "rudabega"

wheel1 = Game.new(first_round)









p wheel1
wheel1.user2_stats[:is_dm] = true
p wheel1.user1_stats
p wheel1.user2_stats
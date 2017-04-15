class Guess

  attr_accessor :correct_word, :user1_stats, :user2_stats, :in_progress_word
  attr_reader :number_of_guesses

	def initialize(correct_word)
		@correct_word = correct_word
		@in_progress_word = "_" * correct_word.length
		@number_of_guesses = correct_word.length * 2
		@user1_stats = {is_dm: true, guesses: 0, available_guess: 0}
		@user2_stats = {is_dm: false, guesses: 0, available_guess: @number_of_guesses}
	end

  def output_status
  	p @correct_word, @in_progress_word, @user1_stats, @user2_stats, @correct_word.length * 2
  end

  def letter_guess(current_guess)
    i = 0
    while i < @correct_word.length
    	if @correct_word[i] == current_guess
    		@in_progress_word[i] = current_guess
    	end
    	i += 1
    end
    if @user1_stats[:is_dm] = true
    	@user2_stats[:guesses] += 1
    	@user2_stats[:available_guess] -= 1
    end
    p @user2_stats
  end

end

current_game = Guess.new("example")
current_game.letter_guess("e")
current_game.letter_guess("m")
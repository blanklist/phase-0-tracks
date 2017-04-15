class Guess

  attr_accessor :correct_word, :in_progress_word, :number_of_guesses, :already_guessed, :guesses

	def initialize(correct_word)
    # states (updated continually):
    # correct_word = [].join('')
		@correct_word = correct_word
    # in_progress_word = []
		@in_progress_word = "_" * correct_word.length
    # number of guesses
		@number_of_guesses = correct_word.length * 2
    # user info: number of guesses/available
    #   guesser or word provider
    @guesses = 0
	  @already_guessed = []
  end

  # behaviors: (methods)
  def output_status
  	p @correct_word, @in_progress_word, @number_of_guesses
  end

  # single_letter_guess
  def letter_guess(current_guess)
    i = 0
    # "repeated guesses do not count against the user"
    @guesses += 1 unless @already_guessed.include?(current_guess)
    @already_guessed << current_guess
    while i < @correct_word.length
    	if @correct_word[i] == current_guess
    		@in_progress_word[i] = current_guess
    	end
    	i += 1
    end
  end

  # full_word_guess
  def word_guess(word)
  	if word == @correct_word
  		p "success! well done"
  	else
  		p "Noop. Are you feeling alright?"
  	end
  end

end

# # GAME BEHAVIOR

# user 1 starts game by entering a word
# user 2 gets so many turns at guessing the letters and/or word
# word is updated with letters and displayed at each guess with ______ denoting length (also number of possible guesses)
#   correct letters by word length? in order to force word guess ?

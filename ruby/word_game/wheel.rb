class Guess

  attr_accessor :correct_word, :in_progress_word, :number_of_guesses, :already_guessed, :guesses

	def initialize(correct_word)
    # states (updated continually):
    # correct_word = [].join('')
		@correct_word = correct_word
    # in_progress_word = []
		@in_progress_word = "_" * correct_word.length
    # number of guesses
		@number_of_guesses = (correct_word.length * 1.5).to_i
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
  	if word != @correct_word
      p "Noop. Are you feeling alright?"
    else
      p "Success! Well done"
  	end
  end
end

# # GAME BEHAVIOR

puts "\e[H\e[2J"
p 'Welcome to The Word Guess Game!'
p 'Guest 1, please cover your eyes.'
# user 1 starts game by entering a word
p 'Guest 2, please enter a word then press \'enter.'
correct_word = gets.chomp

our_game = Guess.new(correct_word)
puts "\e[H\e[2J"

# user 2 gets so many turns at guessing the letters and/or word
p 'Okay! Guest 1, you have ' + our_game.number_of_guesses.to_s + ' letters to choose to help guess the word. Please enter a single letter then press \'enter\' to start: '
player_guess = gets.chomp
# word is updated with letters and displayed at each guess with ______ denoting length (also number of possible guesses)
#   correct letters by word length? in order to force word guess ?
  
game_status = true


while true
  

  if player_guess.length > 1
    our_game.word_guess(player_guess)
    break 

  elsif our_game.guesses == our_game.number_of_guesses
    p "Sorry, you've run out of guesses!"
    break

  elsif our_game.guesses < our_game.number_of_guesses && player_guess.length == 1
    our_game.letter_guess(player_guess)

    puts "\e[H\e[2J"
    p 'Here is your word hint: ' + our_game.in_progress_word
    p 'You have ' + (our_game.number_of_guesses - our_game.guesses).to_s + ' letters left.'
    if (our_game.number_of_guesses - our_game.guesses) == 0
      p 'Please try and guess the word!:'
    else
      p 'Please enter another letter or the whole word: '
    end
    player_guess = gets.chomp



  end
end
p "Thanks for playing!"
require_relative 'wheel'

describe Guess do
	let(:current_game) { Guess.new("example") }

	it "stores the correct word, in-progress word, and number of guesses upon initialization" do
    expect(current_game.output_status).to include("example", "_ _ _ _ _ _ _", 10)
	end

  it "updates in-progress word with every letter guess" do
  	current_game.letter_guess("e")
  	expect(current_game.in_progress_word).to eq("e _ _ _ _ _ e")
    current_game.letter_guess("m")
  	expect(current_game.in_progress_word).to eq("e _ _ m _ _ e")
  end

  it "checks user word guess against actual word and returns success or failure" do
    expect(current_game.word_guess("rudabega")).to eq('Noop. Are you feeling alright?')
    expect(current_game.word_guess("example")).to eq('Success! Well done!')
  end
	
end
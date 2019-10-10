require("minitest/autorun")
require("minitest/rg")
require_relative("./card.rb")
require_relative("./card_game.rb")


class TestCardGame < MiniTest::Test

	def setup
		@game = CardGame.new()
		@card1 = Card.new("Spade", 1)
		@card2 = Card.new("Club", 9)

	end

	def test_check_for_Ace
		assert_equal(1, @card1)
  end

	def test_highest_card
	assert_equal(@card2,@game.highest_card(@card1,@card2))
  end


	def test_cards_total
	    assert_equal("You have a total of 10",@game.cards_total([@card1,@card2]))
	  end




end

	# def test_cards_total
	# 	assert_equal(10, @card1.value)
  # end

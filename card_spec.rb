require("minitest/autorun")
require("minitest/rg")

require_relative("./card.rb")
require_relative("./card_game.rb")


class TestCardGame < MiniTest::Test

	def setup
		@card1 = Card.new("Spade", 1)
		@card2 = Card.new("Club", 9)
	
	end

	def test_check_for_Ace
		assert_equal(1, @card1.value)
  end

	def test_highest_card
		assert_equal(9, @card2.value)
	end

	def test_cards_total
		assert_equal(10, @card1.value)
  end
end

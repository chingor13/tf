require "test_helper"

class BasicTest < Minitest::Test
  def test_basic
    p = Terraforming::Player.new("Ben", 50)
    p.end_turn
    assert_equal 71, p.credits
  end

  def test_all_cards
    # assert_equal 1, Terraforming::Cards.all_cards.length
  end

  def test_find_by_id
    card = Terraforming::Cards.find_card(114)
    assert_equal "Breathing Filters", card.name
  end
end
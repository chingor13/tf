require 'test_helper'

class TestWindmills < Minitest::Test

  def setup
    @card = Terraforming::Cards.find_card(168)
  end

  def test_name
    assert_equal "Windmills", @card.name
  end

  def test_is_science
    assert !@card.science
  end

  def test_effect
    p = Terraforming::Player.new("Ben", 20)
    p.play(@card)
    assert_equal(14, p.credits)
    assert_equal(122, p.energy_production)
  end

end
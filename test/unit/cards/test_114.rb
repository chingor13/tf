require 'test_helper'

class TestBreathingFilters < Minitest::Test

  def setup
    @card = Terraforming::Cards.find_card(114)
  end

  def test_name
    assert_equal "Breathing Filters", @card.name
  end

  def test_is_science
    assert @card.science
  end

end
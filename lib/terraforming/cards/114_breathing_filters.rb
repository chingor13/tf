card = Terraforming::Card.new(114, "Breathing Filters", 11)
card.science = true
card.restriction_type = :oxygen
card.restriction_value = 7
card.restriction_max = false
card.endgame_points = 2

Terraforming::Cards.add_card(card)
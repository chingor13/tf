card = Terraforming::Card.new(168, "Windmills", 6)
card.building = true
# card.energy_tag = true
card.restriction_type = :oxygen
card.restriction_value = 7
card.restriction_max = false
card.endgame_points = 1
card.delta_energy_production = 1

Terraforming::Cards.add_card(card)
module Terraforming
  module Cards
    class Windmills < Terraforming::Card
      def initialize
        super(168, "Windmills", 6)
        self.building = true
        # card.energy_tag = true
        self.restriction_type = :oxygen
        self.restriction_value = 7
        self.restriction_max = false
        self.endgame_points = 1
        self.delta_energy_production = 1
      end

      def play(game_state, player)
        # TODO: validate the game state restriction
        player.energy_production += self.delta_energy_production
        player.play(self)
      end
    end
  end
end

card = Terraforming::Cards::Windmills.new
Terraforming::Cards.add_card(card)
module Terraforming
  module Cards
    class NitrogenRichAsteroid < Terraforming::Card
      def initialize
        super(37, "Nitrogen-Rich Asteroid", 31)
        self.type = :event
        self.space = true
      end

      def play(game_state, player)
        # TODO: validate the game state restriction
        player.score += 2

        if game_state.increase_temperature
          player.score += 1
        end

        player.add_card(self)

        # find the number of leaf cards the player has played
        if player.leaf_card_count >= 3
          player.plants_production += 4
        else
          player.plants_production += 1
        end
      end
    end
  end
end

card = Terraforming::Cards::NitrogenRichAsteroid.new
Terraforming::Cards.add_card(card)
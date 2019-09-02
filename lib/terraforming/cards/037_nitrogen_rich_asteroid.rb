module Terraforming
  module Cards
    class NitrogenRichAsteroid < Terraforming::Card
      def initialize
        super(37, "Nitrogen-Rich Asteroid", 31)
        self.tags = [
          :space,
          :event
        ]
      end

      def play(game_state, player)
        # TODO: validate the game state restriction
        player.terraform_rating += 2

        if game_state.increase_temperature
          player.terraform_rating += 1
        end

        player.play(self)

        # find the number of leaf cards the player has played
        if player.tag_counts[:plant] >= 3
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
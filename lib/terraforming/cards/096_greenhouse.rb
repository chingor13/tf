module Terraforming
  module Cards
    class Greenhouse < Terraforming::Card
      def initialize
        super(96, "Greenhouse", 6)
        self.tags = [
          :plant,
          :building
        ]
      end

      def play(game_state, player)
        # TODO: add one leaf per city in play
        player.play(self)
      end
    end
  end
end

card = Terraforming::Cards::Greenhouse.new
Terraforming::Cards.add_card(card)
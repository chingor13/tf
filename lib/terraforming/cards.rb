module Terraforming
  module Cards
    @cards = {}

    def self.add_card(card)
      @cards[card.id] = card
    end

    def self.all_cards()
      return @cards.values
    end

    def self.find_card(id)
      return @cards[id]
    end
  end
end

# read all files in lib/terraforming/cards/ and insert into the list
Dir.glob(File.expand_path("../cards/*.rb", __FILE__)) do |file|
  require(file)
end
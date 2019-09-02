module Terraforming
  class Player
    attr_accessor :name
    attr_accessor :terraform_rating
    attr_accessor :credits
    attr_accessor :credits_production
    attr_accessor :steel
    attr_accessor :steel_production
    attr_accessor :titanium
    attr_accessor :titanium_production
    attr_accessor :plants
    attr_accessor :plants_production
    attr_accessor :energy
    attr_accessor :energy_production
    attr_accessor :heat
    attr_accessor :heat_production

    attr_accessor :leaf_card_count

    attr_accessor :cards

    def initialize(name, starting_credits)
      self.name = name
      self.terraform_rating = 20
      self.credits = starting_credits
      self.credits_production = 1
      self.steel = 0
      self.steel_production = 1
      self.titanium = 0
      self.titanium_production = 1
      self.plants = 0
      self.plants_production = 1
      self.energy = 0
      self.energy_production = 1
      self.heat = 0
      self.heat_production = 1
      self.leaf_card_count = 0
      self.cards = []
    end

    def end_turn
      # convert energy to heat
      self.heat += self.energy
      self.energy = 0

      # add credits equal to credit production and terraform_rating
      self.credits += self.credits_production + self.terraform_rating

      # add other resources based on production value
      self.steel += self.steel_production
      self.titanium += self.titanium_production
      self.plants += self.plants_production
      self.energy += self.energy_production
      self.heat += self.heat_production
    end

    def play(card)
      # TODO: factor in steel/titanium
      self.credits -= card.cost
      self.cards.push(card)
      if card.leaf
        self.leaf_card_count += 1
      end
    end
  end
end

p = Terraforming::Player.new("Ben", 42)
puts p.name

puts p.credits

p.end_turn()

puts p.credits
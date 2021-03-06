module Terraforming
  class Card
    attr_accessor :id
    attr_accessor :name
    attr_accessor :cost
    attr_accessor :endgame_points

    # list of [:science, :space, :city, :building, :plant, :microbe, :animal,
    # :jovian, :earth, :power, :event]
    attr_accessor :tags

    attr_accessor :restriction_type
    attr_accessor :restriction_value
    # card is playable if value is <= max
    attr_accessor :restriction_max

    attr_accessor :delta_credits
    attr_accessor :delta_credits_production
    attr_accessor :delta_steel
    attr_accessor :delta_steel_production
    attr_accessor :delta_titanium
    attr_accessor :delta_titanium_production
    attr_accessor :delta_plants
    attr_accessor :delta_plants_production
    attr_accessor :delta_energy
    attr_accessor :delta_energy_production
    attr_accessor :delta_heat
    attr_accessor :delta_heat_production

    attr_accessor :delta_terraform_rating
    attr_accessor :delta_temperature

    def initialize(id, name, cost)
      self.id = id
      self.name = name
      self.cost = cost
      self.endgame_points = 0
      self.tags = []

      self.delta_credits = 0
      self.delta_credits_production = 0
      self.delta_steel = 0
      self.delta_steel_production = 0
      self.delta_titanium = 0
      self.delta_titanium_production = 0
      self.delta_plants = 0
      self.delta_plants_production = 0
      self.delta_energy = 0
      self.delta_energy_production = 0
      self.delta_heat = 0
      self.delta_heat_production = 0

      self.delta_terraform_rating = 0
      self.delta_temperature = 0
    end

    def play(game_state, player)
      # FIXME, do basic manipulation
      player.play(self)
    end
  end
end

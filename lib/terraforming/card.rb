module Terraforming
  class Card
    attr_accessor :id
    attr_accessor :name
    attr_accessor :cost
    attr_accessor :endgame_points

    # science, micro, etc.
    attr_accessor :science
    attr_accessor :space
    attr_accessor :city
    attr_accessor :building

    # event, recurring, basic
    attr_accessor :type

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
      self.science = false
      self.space = false
      self.city = false
      self.building = false
      self.type = :normal

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
    end
  end
end

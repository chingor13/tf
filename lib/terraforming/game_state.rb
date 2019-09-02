module Terraforming
  class GameState
    attr_accessor :water_tile_remaining
    attr_accessor :oxygen_level
    attr_accessor :temperature
    attr_accessor :players
    attr_accessor :board # TODO

    def initialize
      self.water_tile_remaining = 9
      self.oxygen_level = 0
      self.temperature = -30
    end

    def increase_temperature
      return false if max_temperature?
      self.temperature += 2
      true
    end

    def increase_oxygen
      return false if max_oxygen?
      self.oxygen_level += 1
      true
    end

    def max_temperature?
      self.temperature == 8
    end

    def max_oxygen?
      self.oxygen_level == 14
    end
  end
end
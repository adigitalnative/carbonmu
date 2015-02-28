module CarbonMU
  class Player < Movable
    include Mongoid::Document

    before_validation :default_location

    def default_location
      self.location ||= Room.starting
    end

    def self.superadmin
      find_by(_special: :superadmin_player)
    end
  end
end

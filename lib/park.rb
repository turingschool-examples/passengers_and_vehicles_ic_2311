require './lib/passenger'
require './lib/vehicle'

class Park
  attr_reader :name,
              :addmission_price,
              :vehicles

  def initialize(name, addmission_price)
    @name = name
    @addmission_price = addmission_price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end
end

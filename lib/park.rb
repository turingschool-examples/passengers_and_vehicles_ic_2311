require './lib/passenger'
require './lib/vehicle'

class Park
  attr_reader :name,
              :admission_price,
              :vehicles

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def list_of_passengers
    @vehicles.flat_map(&:passengers)
  end

  def calculate_revenue
    adult_passengers = list_of_passengers.find_all(&:adult?)
    revenue = adult_passengers.size * @admission_price
    revenue
  end
end

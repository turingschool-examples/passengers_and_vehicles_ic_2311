require './lib/passenger'
require './lib/vehicle'

class Park
  attr_reader :name, :admission_price, :vehicles

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def park_data
    "Welcome to #{@name} park, the admission fee is #{@admission_price} dollars"
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def passengers
    all_passengers = []
    @vehicles.each do |vehicle|
      all_passengers.concat(vehicle.passengers)
    end
    all_passengers
  end

  def revenue
    total_revenue = 0
    passengers.each do |passenger|
      total_revenue += @admission_price if passenger.adult?
    end
    total_revenue
  end
end

class ParkRevenue
  attr_reader :name,
              :admission_price,
              :vehicles_entered

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles_entered = []
  end

  def enter_park(vehicle)
    @vehicles_entered << vehicle
  end
end
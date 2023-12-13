class ParkRevenue
  attr_reader :name,
              :admission_price,
              :vehicles_entered,
              :passengers_entered, 
              :revenue

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles_entered = []
    @passengers_entered = 0
    @revenue = 0
  end

  def enter_park(vehicle)
    @vehicles_entered << vehicle
  end

  def count_passengers_entered(vehicle)
    @passengers_entered << vehicle.passengers
  end

  def admission_paid(vehicle)
    # vehicle.p

  end
end
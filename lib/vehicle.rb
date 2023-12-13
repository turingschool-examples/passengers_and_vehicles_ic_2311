class Vehicle
  attr_reader :year,
              :make,
              :model,
              :speeding

  def initialize(year, make, model, speeding = false)
    @year = year
    @make = make
    @model = model
    @speeding = speeding
  end

  def speeding?
    @speeding
  end

  def speed
    @speeding = true
  end


end

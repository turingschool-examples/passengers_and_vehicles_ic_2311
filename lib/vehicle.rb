class Vehicle
    attr_reader :year, :make, :model, :speed, :passengers
  
    def initialize(year, make, model)
      @year = year
      @make = make
      @model = model
      @speed = 0
      @passengers = []
    end
  
    def speeding?
      speed > 0
    end
  
    def speed
      @speed += 1
    end
  
    def add_passenger(passenger)
      passengers << passenger
    end
  
    def num_adults
      passengers.count { |passenger| passenger.adult? }
    end
  end
  
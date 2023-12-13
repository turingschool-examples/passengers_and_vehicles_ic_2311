class Vehicle

    attr_reader :year,
                :make,
                :model

    def initialize(year, make, model)
        @year = year
        @make = make
        @model = model
        @passengers = []
        @speeding = false
    end
    
    def speeding?
        @speeding == true
    end
    
    def speed
        @speeding = true
    end

    def passengers
        @passengers
    end

    def add_passenger(passenger)
        @passengers << passenger
    end

    def num_adults
        adults = 0
        @passengers.each do |passenger|
            passenger.adult? ? adults += 1 : nil
        end
        adults
    end
end
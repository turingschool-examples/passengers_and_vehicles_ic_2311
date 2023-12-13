class Vehicle
    attr_reader :year, :make, :model, :passengers
    def initialize(year,make,model)
        @year = year
        @make = make
        @model = model
        @passengers = []
        @is_speeding = false
    end

    def speeding?
        @is_speeding
    end
    def speed
        @is_speeding = true
    end
    def add_passenger(passenger)
        passengers << passenger
    end
    def num_adults
        @passengers.count {|passenger| passenger.adult?}
    end
end
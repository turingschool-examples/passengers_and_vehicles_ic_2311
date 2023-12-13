class Vehicle

    attr_reader :year, :make, :model, :passengers

    def initialize(year , make , model , speeding = false)
        @year = year
        @make = make
        @model = model
        @speeding = speeding
        @passengers = []
    end

    def speeding?
        @speeding
    end

    def speed
        @speeding = true
    end

    def add_passenger(passenger)
        passengers << passenger
    end

    def num_adults
        @passengers.count do |passenger|
            passenger.adult?
        end
    end
end
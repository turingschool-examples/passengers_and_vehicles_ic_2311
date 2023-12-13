class Park

    attr_reader :name, :price, :admitted_vehicles, :revenue

    def initialize(name, price)
        @name = name
        @price = price
        @admitted_vehicles = []
        @vehicle_passengers = []
        @revenue = 0
    end

    def admit_vehicle(vehicle)
        @admitted_vehicles << vehicle
        vehicle_passengers
        revenue_collector(vehicle)
    end

    def vehicle_passengers
        @vehicle_passengers = @admitted_vehicles.map do |vehicle|
            vehicle.passengers
        end.flatten
    end

    def revenue_collector(vehicle)
        @revenue += (vehicle.num_adults * @price)
    end

    def patrons
        patron_sorter(@vehicle_passengers)
    end

    def adult_patrons
        adult_patrons = @vehicle_passengers.find_all do |passenger|
            passenger.adult?
        end
        patron_sorter(adult_patrons)
    end

    def patron_sorter(patron_list)
        patron_list.sort_by! do |passenger|
            passenger.name
        end
    end

    def minor_patrons
        minor_patrons = @vehicle_passengers.find_all do |passenger|
            !passenger.adult?
        end
        patron_sorter(minor_patrons)
    end 
end
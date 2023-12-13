class Park
    attr_reader :name, :admission_price, :vehicles

    def initialize(name, admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles = []
    end

    def all_vehicles_in_park
        @vehicles
    end

    def add_vehicle(vehicle)
        @vehicles << vehicle
    end

    def all_passengers_in_park
        @vehicles.flat_map do |vehicle|
            vehicle.passengers
        end
    end

    def calculate_revenue
        adults = all_passengers_in_park.select do |passenger| 
            passenger.age >= 18
        end
        revenue = adults.size * @admission_price
        revenue
    end

    def lists_all_passenger_names
        all_passengers_in_park.map do |passenger| 
            passenger.name
        end
    end

    def sort_names_by_age
        adults = all_passengers_in_park.select do |passenger|
            passenger.age >= 18
        end
        minors = all_passengers_in_park.select do |passenger|
            passenger.age < 18
        end

        adult_names = adults.map do |adult|
            adult.name
        end
        minor_names = minors.map do |minor|
            minor.name
        end

        adult_names.sort
        minor_names.sort

        names_sorted_by_age = { adult_patrons: adult_names, minor_patrons: minor_names}
    end
end





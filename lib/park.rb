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
end

# 2. Generate list of all passengers ("name" key in array), sort name array in hash with minor and adult key and names as values
# 3. sort this list alphabetically




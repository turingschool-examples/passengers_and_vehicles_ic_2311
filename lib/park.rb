class Park

    attr_reader :name, :admission_price, :vehicles

    def initialize(park_details)
        @name = park_details[:name]
        @admission_price = park_details[:admission_price]
        @vehicles = []
        @passengers_entered_park = []
    end

    def vehicle_enters_park(vehicle)
        @vehicles << vehicle
    end

    def passengers_enter_park
        @vehicles.map do |vehicle|
            vehicle.passengers
        end
    end
end
class Park
    attr_reader :name,
                :admission,
                :vehicles
                    
    def initialize(park_info)
        @name = park_info[:name]
        @admission = park_info[:admission]
        @vehicles = []
        @revenue = 0
    end

    def enter_park(vehicle)
        @vehicles << vehicle
    end

    def passenger_list
        @vehicles.flat_map {|vehicle| vehicle.passengers}
    end

    def revenue
        adults_admitted = @vehicles.map {|vehicle| vehicle.num_adults}
        @revenue = (adults_admitted.sum * @admission)
    end
end
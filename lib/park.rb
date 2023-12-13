class Park

    attr_reader :name

    def initialize(name,adm_price)
        @name = name
        @adm_price = adm_price
        @vehicles = []
    end

    def admission_price
        @adm_price
    end

    def vehicles
       @vehicles
    end

    def revenue
        revenue = 0
        @vehicles.each do |vehicle|
            revenue += vehicle.num_adults * @adm_price
        end
        revenue
    end
    
    def add_vehicle(vehicle)
        vehicle.speeding?
        @vehicles << vehicle
    end
    def passengers
        visitors = [] 
        @vehicles.map do |vehicle|
            visitors << vehicle.passengers
        end
        visitors.flatten
    end
end
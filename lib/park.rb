class Park
    attr_reader :name, :admission_price, :revenue_generated, 
    :vehicles_entered, :passengers_entered
    def initialize(name,admission_price)
        @name = name
        @admission_price = admission_price
        @revenue_generated = 0
        @vehicles_entered = []
        @passengers_entered = []
    end

    def vehicle_entering(vehicle)
        @vehicles_entered << vehicle
        vehicle.passengers.each do |each|
            @passengers_entered << each
            if each.adult?
                @revenue_generated += @admission_price
            end
        end
    end

    def all_attendees
        all_names = []
         @passengers_entered.each do |passenger|
            all_names << passenger.name
            all_names.sort
         end
        all_names 
    end
    
    def all_minors
        all_names = []
        @passengers_entered.each do |passenger|
            if !passenger.adult?
                all_names << passenger.name
            end
            all_names.sort
        end
        all_names
    end

    def all_adults
        all_names = []
        @passengers_entered.each do |passenger|
            if passenger.adult?
                all_names << passenger.name
            end
            all_names.sort
        end
        all_names
    end


end
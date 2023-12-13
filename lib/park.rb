class Park

    attr_reader :name

    def initialize(name,adm_price)
        @name = name
        @adm_price = adm_price
        @vehicles = []
        @visitors = []
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
        (vehicle.speeding?) ? (@vehicles << vehicle) : @vehicles
    end
    def passengers
        @visitors = @vehicles.map do |vehicle|
            vehicle.passengers
        end.flatten
    end

    def attendees_list(list)
        @visitors = list.sort_by! do |visitor|
            visitor.name
        end
        @visitors = @visitors.map do |visitor|
            visitor.name
        end
    end

    def attendees
        passengers
        attendees_list(@visitors)
    end

    def adult_attendees
        passengers
        adult_attendees = @visitors.find_all do |visitor|
            visitor.adult?
        end
        attendees_list(adult_attendees)
    end

    def minor_attendees
        passengers
        minor_attendees = @visitors.find_all do |visitor|
            !visitor.adult?
        end
        attendees_list(minor_attendees)
    end

    def track_patrons
        p "The #{@name} National Park has the honor to announce the patrons for the year: #{adult_attendees.join(", ")}, who generously gave us #{revenue} USD"
    end
end
class NpsData
    attr_reader :parks

    def initialize(parks)
        @parks = parks 
    end

    def all_patrons
        all_passengers = @parks.flat_map {|park| park.passenger_list}
        names = all_passengers.flat_map {|passenger| passenger.name}
        names.sort!
    end

    def all_minors
        all_passengers = @parks.flat_map {|park| park.passenger_list}
        minors = all_passengers.select {|passenger|  passenger.adult? == false}
        minors.map! {|minor| minor.name}
        minors.sort!
    end

    def all_adults
        all_passengers = @parks.flat_map {|park| park.passenger_list}
        adults = all_passengers.select {|passenger|  passenger.adult?}
        adults.map! {|adult| adult.name}
        adults.sort!
    end
end
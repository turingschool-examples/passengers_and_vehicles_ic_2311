class Passenger
    attr_reader :name,
                :age
    
    def initialize(passenger_data)
        @name = passenger_data["name"]
        @age = passenger_data["age"]
        @driver = false
    end

    def adult?
        @age.to_i >= 18
    end

    def driver?
        @driver
    end
    
    def drive
        @driver = true
    end
end
class Passenger
    attr_reader :name, :age
    attr_accessor :driver
    
    def initialize(passenger_info)
        @name = passenger_info["name"]
        @age = passenger_info["age"]
        @driver = false
    end

    def adult?
        @age >= 18
    end

    def drive     
        @driver = true if adult?
    end

    def driver?
        @driver
    end
end
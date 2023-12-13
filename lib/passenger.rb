class Passenger
    attr_reader :name, :age, :driver

    def initialize(passenger_attributes)
        @name = passenger_attributes["name"]
        @age = passenger_attributes["age"]
        @driver = false
    end

    def adult?
        @age >= 18
    end

    def drive
        @driver = true
    end

    def driver?
        @driver
    end
end
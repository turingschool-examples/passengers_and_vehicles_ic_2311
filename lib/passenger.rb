class Passenger

    attr_reader :name, :age

    def initialize(passenger_details , driver = false)
        @name = passenger_details["name"]
        @age = passenger_details["age"]
        @driver = driver
    end

    def adult?
        @age >= 18
    end

    def driver?
        @driver
    end

    def drive
        @driver = true
    end
end
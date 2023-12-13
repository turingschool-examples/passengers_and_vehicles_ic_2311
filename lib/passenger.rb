class Passenger
    attr_reader :name , :age
    def initialize(passenger_details)
        @name = passenger_details["name"]
        @age = passenger_details["age"]
        @is_driving = false
    end

    def adult?
        @age >= 18
    end

    def driver?
        @is_driving
    end
    def drive
        @is_driving = true
    end

end
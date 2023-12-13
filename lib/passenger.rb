class Passenger
    attr_reader :name,
                :age,
                :driver
    
    def initialize(information)
        @name = information["name"]
        @age = information["age"]
        @driver = false
    end

    def adult?
        @age >= 18
    end

    def driver?
        @driver == true
    end

    def drive
        @driver = true
    end

end
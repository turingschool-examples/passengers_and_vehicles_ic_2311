class Passenger
attr_reader :name, :age, :driver


    # passenger_detials = {:name => "Charlie", :age => 18}
    # passenger_detials = Passenger.new(passenger_detials)

    # puts passenger.name

    # require 'pry' ; binding.pry
    def initialize(passenger_detials)
        @name = passenger_detials["name"]
        @age = passenger_detials["age"]
        @driver = false
    end

    def adult?
        @age >= 18
    end
    
    def driver?
        driver
    end
    
    def drive
        @driver = true
    end
   
    
end
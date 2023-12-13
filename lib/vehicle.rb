class Vehicle
    attr_reader :year, :make, :model, :passengers
    attr_accessor :speed

    def initialize(year, make, model)
        @year = year 
        @make = make 
        @model = model 
        @speed = 55 
        @passengers = []
    end 

    def speeding? 
        speed > 55
    end 
    
    def add_passenger(passenger)
        passengers << passenger
    end 
end 
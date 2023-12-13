class Vehicle
    attr_reader :year, :make, :model
    attr_accessor :speed

    def initialize(year, make, model)
        @year = year 
        @make = make 
        @model = model 
        @speed = 55 
    end 

    def speeding? 
        speed > 55
    end 

end 
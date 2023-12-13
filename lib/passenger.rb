class Passenger
    attr_reader :name, :age 

    def initialize(passenger_data)
        @name = passenger_data['name']
        @age = passenger_data['age']
    end 

    def adult? 
        @age >= 18 
    end 

    def driver? 
        drive == true 
    end 

    def drive 
        adult? == true 
    end 
end 
class Passenger
    attr_reader :name, :age, :drive

        def initialize(passenger_details)
          @name = passenger_details[:name]
          @age = passenger_details[:age]
          @adult = @age.to_i >= 18
          @drive = passenger_details[:drive] || false
  
        end
     
      
        def driver?
          @drive
        end
      
        def adult?
          @adult
        end
      
    
end

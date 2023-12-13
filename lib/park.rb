class Park
   attr_reader :name,
               :admission_price,
               :vehicles_entered_park,
               :passengers_entered_park
   
   def initialize(name, admission_price)
      @name = name
      @admission_price = admission_price
      @vehicles_entered_park = []
      @passengers_entered_park = []
   end

   def add_vehicle(vehicle)
      @vehicles_entered_park.push(vehicle)
      add_passenger_to_park(vehicle)
      @vehicles_entered_park
   end

   def add_passenger_to_park(vehicle)
      vehicle.passengers.each do |passenger| 
         @passengers_entered_park.push(passenger)
      end
   end

end
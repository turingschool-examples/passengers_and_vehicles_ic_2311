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
      @vehicles_entered_park.each { |vehicle| vehicle.passengers.each{ |passenger| @passengers_entered_park.push(passenger) } }
      @vehicles_entered_park
   end

end
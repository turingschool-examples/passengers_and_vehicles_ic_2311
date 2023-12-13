class Park
   attr_reader :name,
               :admission_price,
               :vehicles_entered_park
   
   def initialize(name, admission_price)
      @name = name
      @admission_price = admission_price
      @vehicles_entered_park = []
   end

   def add_vehicle(vehicle)
      @vehicles_entered_park.push(vehicle)
   end
end
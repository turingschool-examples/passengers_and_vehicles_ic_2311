require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
  before do
    vehicle = Vehicle.new("2001", "Honda", "Civic")  
  end


end

expect(vehicle.year).to eq("2001")


expect(vehicle.make).to eq("Honda")


expect(vehicle.model).to eq("Civic")


expect(vehicle.speeding?).to eq(false)


vehicle.speed

expect(vehicle.speeding?).to eq(true)


expect(vehicle.passengers).to eq()
[]

expect(charlie = Passenger.new({"name" => "Charlie", "age" => 18})    ).to eq()
#<Passenger:0x00007fe0da1ec450...>

expect(jude = Passenger.new({"name" => "Jude", "age" => 20})    ).to eq()
#<Passenger:0x00007fe0da2730e0...>

expect(taylor = Passenger.new({"name" => "Taylor", "age" => 12})    ).to eq()
#<Passenger:0x00007fe0da2cf1b0...>

vehicle.add_passenger(charlie)    

vehicle.add_passenger(jude)    

vehicle.add_passenger(taylor)    

expect(vehicle.passengers).to eq()
[#<Passenger:0x00007fe0da1ec450...>, #<Passenger:0x00007fe0da2730e0...>, #<Passenger:0x00007fe0da2cf1b0...>]

expect(vehicle.num_adults).to eq()
2
#<Vehicle:0x00007fe0da9c63d8...>

expect(vehicle.year).to eq()
"2001"

expect(vehicle.make).to eq()
"Honda"

expect(vehicle.model).to eq()
"Civic"

expect(vehicle.speeding?).to eq()
false

vehicle.speed

expect(vehicle.speeding?).to eq()
true

expect(vehicle.passengers).to eq()
[]

expect(charlie = Passenger.new({"name" => "Charlie", "age" => 18})    ).to eq()
#<Passenger:0x00007fe0da1ec450...>

expect(jude = Passenger.new({"name" => "Jude", "age" => 20})    ).to eq()
#<Passenger:0x00007fe0da2730e0...>

expect(taylor = Passenger.new({"name" => "Taylor", "age" => 12})    ).to eq()
#<Passenger:0x00007fe0da2cf1b0...>

vehicle.add_passenger(charlie)    

vehicle.add_passenger(jude)    

vehicle.add_passenger(taylor)    

expect(vehicle.passengers).to eq()
[#<Passenger:0x00007fe0da1ec450...>, #<Passenger:0x00007fe0da2730e0...>, #<Passenger:0x00007fe0da2cf1b0...>]

expect(vehicle.num_adults).to eq(2)

require './lib/vehicle'
require './lib/passenger'
require './lib/park'
RSpec.describe Park do
    it 'exists and has attributes' do
        park = Park.new("Al",20)
        expect(park).to be_instance_of(Park)
        expect(park.name).to eq("Al")
        expect(park.admission_price).to eq(20)
        expect(park.revenue_generated).to eq(0)
        expect(park.vehicles_entered).to eq([])
        expect(park.passengers_entered).to eq([])
    end
    it 'methods work' do
        park = Park.new("Al",20)
        vehicle = Vehicle.new("2001", "Honda", "Civic")
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        jude = Passenger.new({"name" => "Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        vehicle.add_passenger(charlie)   
        vehicle.add_passenger(jude)  
        vehicle.add_passenger(taylor)
        park.vehicle_entering(vehicle)
        expect(park.passengers_entered).to eq(vehicle.passengers)
        expect(park.vehicles_entered).to eq([vehicle])
        expect(park.revenue_generated).to eq(40)
        expect(park.all_attendees).to eq(["Charlie","Jude","Taylor"])
        expect(park.all_minors).to eq(["Taylor"])
        expect(park.all_adults).to eq(["Charlie","Jude"])
    end
end
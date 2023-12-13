require "./lib/vehicle"
require "./lib/passenger"
require "./lib/park"

RSpec.describe Park do
    before :each do
        @vehicle1 = Vehicle.new("2001", "Honda", "Civic") 
        @vehicle2 = Vehicle.new("2009", "Subaru", "Legacy")
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        @park1 = Park.new("Yosemite", 25)

        @vehicle1.add_passenger(@charlie)  
        @vehicle1.add_passenger(@jude)
        @vehicle2.add_passenger(@taylor)
        @park1.add_vehicle(@vehicle1)
        @park1.add_vehicle(@vehicle2)
    end

    it "exists" do
        expect(@park1).to be_an_instance_of Park
    end

    it "has a name, admission price" do
        expect(@park1.name).to eq("Yosemite")
        expect(@park1.admission_price).to eq(25)
    end

    it "#all_vehicles_in_park" do
        expect(@park1.vehicles).to eq ([@vehicle1, @vehicle2])
    end

    it "#all_passengers_in_park" do
        expect(@park1.all_passengers_in_park).to eq([@charlie, @jude, @taylor])
    end

    it "#calculate_revenue" do
        expect(@park1.calculate_revenue).to eq(50)
    end
end
require "./lib/vehicle"
require "./lib/passenger"
require "./lib/park"

RSpec.describe Park do
    before :each do
        @vehicle1 = Vehicle.new("2001", "Honda", "Civic") 
        @vehicle2 = Vehicle.new("2009", "Subaru", "Legacy")
        @vehicle3 = Vehicle.new("2015", "Toyota", "Tacoma")
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        @park1 = Park.new("Yosemite", 25)
        @park2 = Park.new("Rocky Mountain", 20)
    end

    it "exists" do
        expect(@park1).to be_an_instance_of Park
    end

    it "has a name, admission price" do
        expect(@park1.name).to eq("Yosemite")
        expect(@park1.admission_price).to eq(25)
    end

    it "#all_vehicles_in_park" do
        expect(@park1.vehicles).to eq ([])
    end

    it "#all_passengers_in_park" do
        expect(@park1.passengers).to eq([])
    end

    it "#revenue_generated" do
        expect(@park.revenue).to eq(50)
    end
end
require "rspec"
require "./lib/passenger"
require "./lib/vehicle"

RSpec.describe Vehicle do

    describe "#Initialize" do
        it "exists and its attributes can be read" do
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            expect(vehicle).to be_a(Vehicle)
            expect(vehicle.year).to eq("2001")
            expect(vehicle.make).to eq("Honda")
            expect(vehicle.model).to eq("Civic")
        end
        it "starts with no passengers" do
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            expect(vehicle.passengers).to eq([])
        end
        it "does not start speeding" do
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            expect(vehicle.speeding?).to be(false)
        end
    end
    describe "#Speeding" do
        it "evaluates correctly if vehicle is speeding or not" do
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            expect(vehicle.speeding?).to be(false)
            vehicle.speed
            expect(vehicle.speeding?).to be(true)
        end
    end

    describe "#Passengers" do
        it "can add passengers" do
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20}) 
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
            expect(vehicle.passengers).to eq([])
            vehicle.add_passenger(charlie)
            vehicle.add_passenger(jude)
            vehicle.add_passenger(taylor)
            expect(vehicle.passengers).to eq([charlie, jude, taylor])
        end
        it "returns the number of adults from its passengers" do
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20}) 
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
            vehicle.add_passenger(charlie)
            vehicle.add_passenger(jude)
            vehicle.add_passenger(taylor)
            expect(vehicle.num_adults).to eq(2)
        end
    end
end
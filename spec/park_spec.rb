require 'spec_helper'

RSpec.describe Park do
  let(:yosemite) {Park.new("Yosemite", 50)}
  let(:vehicle) {Vehicle.new("2001", "Honda", "Civic")}
  let(:taylor) {Passenger.new({"name"=>"Taylor", "age"=>12})}
  let(:charlie) { Passenger.new({"name"=>"Charlie", "age"=>18})}
  let(:jude) { Passenger.new({"name"=>"Jude", "age"=>20})}

  describe "#initialize" do
    it "can initialize" do
      expect(yosemite).to be_a (Park)
      expect(yosemite.name).to eq ("Yosemite")
      expect(yosemite.admission_price).to eq (50)
      expect(yosemite.vehicles).to eq ([])
    end
  end

  describe "#add_vehicle" do
    it "add a vehicle to the park" do
      yosemite.add_vehicle(vehicle)

      expect(yosemite.vehicles.first).to be_a (Vehicle)
      expect(yosemite.vehicles).to eq ([vehicle])
    end
  end

  describe "#list_of_passengers" do
    it "return all passengers who enter the park" do
      yosemite.add_vehicle(vehicle)
      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      expect(yosemite.list_of_passengers).to match_array ([jude, taylor, charlie])
    end
  end

  describe "#calculate_revenue" do
    it "calculate the revenue" do
      yosemite.add_vehicle(vehicle)
      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      expect(yosemite.calculate_revenue).to eq (100)
    end
  end
end

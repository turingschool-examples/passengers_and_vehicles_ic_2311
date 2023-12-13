require 'spec_helper'

RSpec.describe Park do
  let(:yosemite) {Park.new("Yosemite", 50)}
  let(:vehicle) {Vehicle.new("2001", "Honda", "Civic")}

  describe "#initialize" do
    it "can initialize" do
      expect(yosemite).to be_a (Park)
      expect(yosemite.name).to eq ("Yosemite")
      expect(yosemite.addmission_price).to eq (50)
      expect(yosemite.vehicles).to eq ([])
    end
  end

  describe "#add_vehicle" do
    it "add a vehicle to the park" do
      yosemite.add_vehicle(vehicle)

      expect(yosemite.vehicles).to eq ([vehicle])
    end
  end
end

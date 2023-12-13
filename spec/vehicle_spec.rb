require 'spec_helper'

RSpec.describe Vehicle do
  let(:vehicle) {Vehicle.new("2001", "Honda", "Civic")}

  describe "#initialize" do
    it "can initialize" do
      expect(vehicle).to be_a (Vehicle)
      expect(vehicle.year).to eq ("2001")
      expect(vehicle.make).to eq ("Honda")
      expect(vehicle.model).to eq ("Civic")
    end
  end

  describe "#speeding?" do
    it "return false by default" do
      expect(vehicle.speeding).to eq (false)
    end
  end

  describe "#speed" do
    it "change speeding to true" do
      vehicle.speed

      expect(vehicle.speeding).to eq (true)
    end
  end

end

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


end

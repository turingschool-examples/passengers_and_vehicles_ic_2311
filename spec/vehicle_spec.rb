require 'rspec'
require './lib/vehicle'

describe Vehicle do
  describe 'Vehicle' do
    it 'exists' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle).to be_instance_of(Vehicle)
      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
    end
  end
end

require 'rspec'
require './lib/park'

describe Park do
  describe 'Park' do
    it 'exists' do
      the_medows = Park.new("The Medows", 15)

      expect(the_medows).to be_instance_of(Park)
      expect(the_medows.park_data).to eq("Welcome to The Medows park, the admission fee is 15 dollars")
    end
  end

  describe '#add_vehicle' do
    it 'adds a vehicle to the park' do
      the_medows = Park.new("The Medows", 15)
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      the_medows.add_vehicle(vehicle)
      expect(the_medows.vehicles).to include(vehicle)
    end
  end

  
end

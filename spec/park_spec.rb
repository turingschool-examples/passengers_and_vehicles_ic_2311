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

  describe '#passengers' do
    it 'calculates revenue based on adult passengers' do
      the_medows = Park.new("The Medows", 15)
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)
      the_medows.add_vehicle(vehicle)

      expect(the_medows.passengers).to include(Passenger)
    end
  end


  describe '#revenue' do
    it 'calculates revenue based on adult passengers' do
      the_medows = Park.new("The Medows", 15)
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)
      the_medows.add_vehicle(vehicle)

      expect(the_medows.revenue).to eq(30)
    end
  end
end

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

  describe '#speeding?' do
    it 'returns false by defult' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.speeding?).to eq(false)
    end
  end

  describe '#speed' do
    it 'returns speeding? true' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.speed).to eq(true)

      vehicle.speed
      expect(vehicle.speeding?).to eq(true)
    end
  end

  describe '#add_passenger' do
    it 'can add a passenger' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.passengers).to eq([])

      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      expect(vehicle.passengers).to eq([charlie, jude, taylor])
    end
  end
end

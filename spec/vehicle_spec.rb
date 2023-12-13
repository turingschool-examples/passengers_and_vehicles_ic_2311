# vehicle_spec.rb

require_relative 'vehicle'
require_relative 'passenger'

RSpec.describe Vehicle do
  @vehicle = { Vehicle.new("2001", "Honda", "Civic") }
  @charlie = { Passenger.new({"name" => "Charlie", "age" => 18}) }
  @jude = { Passenger.new({"name" =. "jude", "age" =. 20})}
  @taylor = { Passenger.new({"name" => "Taylor", "age" => 12}) }

  describe '#initialize' do
    it 'sets the year, make, and model' do
      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
    end

    it 'initializes speed to 0' do
      expect(vehicle.speed).to eq(0)
    end

    it 'initializes passengers to an empty array' do
      expect(vehicle.passengers).to be_empty
    end
  end

  describe '#speeding?' do
    it 'returns false when the vehicle is not speeding' do
      expect(vehicle.speeding?).to be false
    end

    it 'returns true when the vehicle is speeding' do
      vehicle.speed
      expect(vehicle.speeding?).to be true
    end
  end

  describe '#speed' do
    it 'increases the speed by 1' do
      expect { vehicle.speed }.to change { vehicle.speed }.from(0).to(1)
    end
  end

  describe '#add_passenger' do
    it 'adds a passenger to the vehicle' do
      vehicle.add_passenger(charlie)
      expect(vehicle.passengers).to include(charlie)
    end
  end

  describe '#num_adults' do
    it 'returns the number of adult passengers' do
      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)
      expect(vehicle.num_adults).to eq(2)
    end
  end
end

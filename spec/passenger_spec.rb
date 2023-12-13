require 'rspec'
require './lib/passenger'

describe Passenger do

  describe 'Passenger' do
    it 'exists' do
      passenger = Passenger.new({"name" => "Charlie", "age" => 18})

      expect(passenger).to be_instance_of(Passenger)
      expect(passenger.name).to eq("Charlie")
      expect(passenger.age).to eq(18)
      expect(passenger.driver?).to eq(false)
    end
  end

  describe '#adult?' do
    it 'returns true when age is 18 or older' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})

      expect(charlie.adult?).to eq(true)
    end

    it 'returns false when age is less than 18' do
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(taylor.adult?).to eq(false)
    end
  end

  describe 'driver?' do
    it 'returns false to driver?' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.driver?).to eq(false)
      expect(taylor.driver?).to eq(false)
    end
  end
end

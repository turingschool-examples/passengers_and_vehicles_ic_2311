require 'rspec'
require './lib/passenger'

describe Passenger do

  describe 'Passenger' do
    it 'exists' do
      passenger = Passenger.new({"name" => "Charlie", "age" => 18})

      expect(passenger).to be_instance_of(Passenger)
    end
  end

  describe '#adult?' do
    it 'returns true when age is 18 or older' do
      Charlie = Passenger.new({"name" => "Charlie", "age" => 18})

      expect(Charlie.adult?).to eq(true)
    end
  end
end

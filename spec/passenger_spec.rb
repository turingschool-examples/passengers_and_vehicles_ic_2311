require './lib/passenger'
require 'pry'

RSpec.describe Passenger do
    before(:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end

    describe '#initialize' do
        it 'can initialize' do
        expect(@charlie).to be_an_instance_of(Passenger)
        expect(@charlie.name).to eq("Charlie")
        expect(@charlie.age).to eq(18)
        end
    end

    describe '#drive' do
        it 'sets the driver status to true' do
        expect { passenger.drive }.to change { passenger.driver }.from(false).to(true)
        end
        end

    describe '#driver?' do
        it 'assigns driver when not driving' do
            it 'returns false' do
        expect(passenger.driver?).to be false
      end
        end

        it 'assigns driver when behind the wheel' do
        it 'returns true' do
          passenger.drive
          expect(passenger.driver?).to be true
        end
        end
    end
end
require 'pry'
require './lib/passenger'

RSpec.describe Passenger do
    before(:each) do
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    end

    describe '#initialize' do
        it 'can initialize' do
        expect(@taylor).to be_an_instance_of(Passenger)
        end

        it 'has a name' do
        expect(@taylor.name).to eq("Taylor")
        end

        it 'has an age' do
        expect(@taylor.age).to eq(12)
        end
    end

    describe '#adult?' do
        it 'is an adult' do

            expect(@charlie.adult?).to eq(true)
            expect(@taylor.adult?).to eq (false)
        end
    end
    
    describe '#driver?' do
        it 'is a driver' do

            expect(@charlie.driver?).to eq (false)
            
            @charlie.drive
            expect(@charlie.driver?).to eq (true)
        end
    end
        
end
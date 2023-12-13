require './lib/passenger'
require 'rspec'
require 'pry'

RSpec.describe Passenger do
    describe '#initialize' do
        it 'exists' do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})

            expect(charlie).to be_a(Passenger)
        end
    end

    describe '#name' do
        it 'has a name' do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})

            expect(charlie.name).to eq("Charlie")
        end
    end

    describe '#age' do
        it 'has an age' do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})

            expect(charlie.age).to eq(18)
        end
    end

    describe '#adult?' do
        it 'is an adult at 18 years of age' do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})

            expect(charlie.adult?).to eq(true)
        end

        it 'is not an adult if under 18 years of age' do
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            expect(taylor.adult?).to eq(false)
        end
    end

    describe '#driver?' do
        it 'can tell if the passenger is the driver' do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})

            expect(charlie.driver?).to eq(false)
        end
    end

    describe '#drive' do
        it 'can make a passenger the driver' do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})

            expect(charlie.driver?).to eq(false)
            
            charlie.drive

            expect(charlie.driver?).to eq(true)
        end
    end
end
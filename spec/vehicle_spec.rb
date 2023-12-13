require './lib/passenger'
require './lib/vehicle'
require 'rspec'
require 'pry'

RSpec.describe Vehicle do
    describe '#initialize' do
        it 'exists' do
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle).to be_a(Vehicle)
        end
    end

    describe '#year' do
        it 'can tell you the year of the vehicle' do
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle.year).to eq("2001")
        end
    end

    describe '#make' do
        it 'can tell you the make of the vehicle' do
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle.make).to eq("Honda")
        end
    end

    describe '#model' do
        it 'can tell you the model of the vehicle' do
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle.model).to eq("Civic")
        end
    end

    describe '#speeding?' do
        it 'starts with the vehicle not currently speeding' do
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle.speeding?).to eq(false)
        end
    end

    describe '#speed' do
        it 'can make the vehicle begin to speed' do
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle.speeding?).to eq(false)

            vehicle.speed

            expect(vehicle.speeding?).to eq(true)
        end
    end

    describe '#passengers' do
        it 'starts with no passengers' do
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle.passengers).to eq([])
        end

        it 'can add passengers' do
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            vehicle.add_passenger(charlie)
            vehicle.add_passenger(jude)
            vehicle.add_passenger(taylor)

            expect(vehicle.passengers).to eq([charlie, jude, taylor])
        end
    end

    describe '#num_adults' do
        it 'can tell how many passengers are adults' do
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            vehicle.add_passenger(charlie)
            vehicle.add_passenger(jude)
            vehicle.add_passenger(taylor)

            expect(vehicle.num_adults).to eq(2)
        end
    end

end
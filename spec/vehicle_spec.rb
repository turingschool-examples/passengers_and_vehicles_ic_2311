require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do 
    describe '#initialize' do 
        it 'initializes' do 
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle).to be_a(Vehicle)
        end
        
        it 'has the year of the vehicle' do 
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle.year).to eq("2001")
        end 

        it 'has the make of the vehicle' do 
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle.make).to eq("Honda")
        end

        it 'has the model of the vehicle' do 
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle.model).to eq("Civic")
        end 
    end 

    describe '#speeding?' do 
        it 'is not speeding' do 
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle.speeding?).to eq(false)
        end 

        it 'is speeding' do 
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            vehicle.speed = 60 
        
            expect(vehicle.speeding?).to eq(true)
        end 
    end 
end 
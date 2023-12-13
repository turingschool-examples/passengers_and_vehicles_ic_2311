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

    describe '#add_passenger' do 
        it 'has no passengers at first' do 
            vehicle = Vehicle.new("2001", "Honda", "Civic")

            expect(vehicle.passengers).to eq([])
        end
        
        it 'adds passengers' do 
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            vehicle.add_passenger(charlie)

            expect(vehicle.passengers).to eq([charlie])

            jude = Passenger.new({"name" => "Jude", "age" => 20}) 
            taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
            vehicle.add_passenger(jude)
            vehicle.add_passenger(taylor)

            expect(vehicle.passengers).to eq([charlie, jude, taylor])
        end 
    end 

    describe '#num_adults' do 
        it 'counts the number of adults' do 
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            vehicle.add_passenger(charlie)

            expect(vehicle.num_adults).to eq(1)

            jude = Passenger.new({"name" => "Jude", "age" => 20}) 
            taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
            vehicle.add_passenger(jude)
            vehicle.add_passenger(taylor)

            expect(vehicle.num_adults).to eq(2)
        end 
    end
end 
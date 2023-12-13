require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
    before(:each) do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
    end


    describe '#initialize' do
        it 'can initialize vehicle class' do
            expect(@vehicle).to be_an_instance_of(Vehicle)
            expect(@vehicle.year).to eq("2001")
            expect(@vehicle.make).to eq("Honda")
            expect(@vehicle.model).to eq("Civic")
        end
    end

    describe '#speeding?' do
        it 'can check if a vehicle was speeding' do
            expect(@vehicle.speeding?).to eq (false)
            @vehicle.speed
            expect(@vehicle.speeding?).to eq (true)
            
        end
    end
end

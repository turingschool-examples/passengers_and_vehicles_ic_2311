require 'pry'
require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do
    before(:each) do
        @park = Park.new({name: "Odell Adventures", admission_price: 50})
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
        @vehicle2 = Vehicle.new("2002", "Mazda", "Miata")
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})   
    end
  
    describe '#initialize' do
      it 'can initialize' do
        expect(@park).to be_an_instance_of(Park)
      end

      it 'has a name' do
        expect(@park.name).to eq("Odell Adventures")
      end

      it 'has an admission price' do
        expect(@park.admission_price).to eq(50)
      end
    end

    describe '#enter_park' do
        it 'vehicle enters the park' do
            @park.vehicle_enters_park(@vehicle)
            expect(@park.vehicles).to eq ([@vehicle])
        end

        it 'passengers enter the park' do
            @vehicle.add_passenger(@charlie)
            expect(@vehicle.passengers).to eq ([@charlie])

            @vehicle2.add_passenger(@jude)

            @park.vehicle_enters_park(@vehicle)
            @park.vehicle_enters_park(@vehicle2)
            expect(@park.passengers_enter_park).to eq ([[@charlie] , [@jude]])
            
            # @park.passengers_enter_park
            # expect(@passengers_entered_park).to eq ([[@charlie]])


        end
    end
end
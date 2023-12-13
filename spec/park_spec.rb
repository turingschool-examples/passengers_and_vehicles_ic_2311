require './lib/park'
require './lib/passenger'
require './lib/vehicle'

RSpec.describe do
   before(:each) do
      @park = Park.new("Yellowstone", 25)
   end

   describe '#initialize' do
      it 'can initialize' do
         expect(@park).to be_a Park
      end

      it 'has a name' do
         expect(@park.name).to eq "Yellowstone"
      end

      it 'has an admission price' do
         expect(@park.admission_price).to eq 25
      end      
   end

   describe '#vehicles_entered_park' do
      it 'start as an empty array' do
         expect(@park.vehicles_entered_park).to eq []
      end 
   
      it 'can list all vehicles that entered the park' do
         honda = Vehicle.new("2001", "Honda", "Civic") 
         nissan = Vehicle.new("2010", "Nissan", "Altima")

         @park.add_vehicle(honda)
         @park.add_vehicle(nissan)
         expect(@park.vehicles_entered_park).to eq ([honda, nissan])
      end
   end
end
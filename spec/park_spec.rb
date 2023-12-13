require './lib/park'
require './lib/passenger'
require './lib/vehicle'

RSpec.describe do
   describe '#initialize' do
      it 'can initialize' do
         park = Park.new("Yellowstone", 25)
         expect(park).to be_a Park
      end

      it 'has a name' do
         park = Park.new("Yellowstone", 25)
         expect(park.name).to eq "Yellowstone"
      end

      it 'has an admission price' do
         park = Park.new("Yellowstone", 25)
         expect(park.admission_price).to eq 25
      end      
   end

   describe '#vehicles_entered_park' do
      it 'start as an empty array' do
         park = Park.new("Yellowstone", 25)
         expect(park.vehicles_entered_park).to eq []
      end 
   
      it 'can list all vehicles that entered the park' do
         park = Park.new("Yellowstone", 25)
         honda = Vehicle.new("2001", "Honda", "Civic") 
         nissan = Vehicle.new("2010", "Nissan", "Altima")

         expect(park.vehicles_entered_park).to eq ([honda, nissan])
      end
   end
end
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
end
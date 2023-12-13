require './lib/park'
require './lib/passenger'
require './lib/vehicle'

RSpec.describe do
   describe '#initialize' do
      it 'can initialize' do
         park = Park.new("Yellowstone", 25)
         expect(park).to be_a Park
      end
   end
end
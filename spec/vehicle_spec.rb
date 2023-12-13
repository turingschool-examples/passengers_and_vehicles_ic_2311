require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
   before(:each) do
      @vehicle = Vehicle.new("2001", "Honda", "Civic")
   end

   describe '#initialize' do
      it 'can initialize' do
         expect(@vehicle).to be_a Vehicle
      end
   end
end
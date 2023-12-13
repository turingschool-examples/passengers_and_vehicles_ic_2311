require './lib/passenger'

RSpec.describe do
   describe '#initialize' do
      it 'can initialize' do
         passenger = Passenger.new({"name" => "Charlie", "age" => 18})
         expect(passenger).to be_a Passenger
      end

   end
end
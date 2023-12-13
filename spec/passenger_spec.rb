require './lib/passenger'

RSpec.describe do
   before(:each) do
      @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
   end

   describe '#initialize' do
      it 'can initialize' do
         expect(@charlie).to be_a Passenger
      end

      it 'has a name' do
         expect(@charlie.name).to eq "Charlie"
      end

      it 'has a age' do
         expect(@charlie.age).to eq 18
      end
   end

   describe '#adult?' do
      it 'check if passenger is adult' do
         expect(@charlie.adult?).to eq true
         expect(@taylor.adult?).to eq false
      end
   end

   describe '#driver?' do
      it 'check if passenger is the driver' do
         expect(@charlie.driver?).to eq false
         expect(@taylor.driver?).to eq false
      end
   end
end
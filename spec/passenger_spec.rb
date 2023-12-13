require './lib/passenger'

RSpec.describe Passenger do
    before(:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end

    describe '#initialize' do
        it 'can initialize passenger class' do
            expect(@charlie).to be_an_instance_of(Passenger)
            expect(@charlie.age).to eq(18)
            expect(@charlie.name).to eq("Charlie")
            expect(@taylor).to be_an_instance_of(Passenger)
            expect(@taylor.age).to eq(12)
            expect(@taylor.name).to eq("Taylor")
        end
    end

    describe '#adult?' do
        it 'shows if the age of the passenger is 18 or older' do
            expect(@charlie.adult?).to eq(true)
            expect(@taylor.adult?).to eq(false)
        end
    end
end
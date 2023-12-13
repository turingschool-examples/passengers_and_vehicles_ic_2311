require './lib/passenger'

RSpec.describe Passenger do
    before (:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end
    
    it "can initialize" do
        expect(@charlie).to be_an_instance_of(Passenger)
        expect(@charlie.name).to eq("Charlie")
        expect(@charlie.age).to eq(18)
    end

    it 'states if adult' do
        expect(@charlie.adult?).to be true
        expect(@taylor.adult?).to be false
    end

    it 'states if a driver' do
        expect(@charlie.driver?).to be false

        @charlie.drive
        expect(@charlie.driver?).to be true
    end

    it 'must be an adult to drive' do
        expect(@taylor.driver?).to be false

        @taylor.drive
        expect(@taylor.driver?).to be false
    end
end
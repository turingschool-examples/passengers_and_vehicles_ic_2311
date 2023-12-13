require './lib/passenger'

RSpec.describe Passenger do
    it 'exists' do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        expect(charlie).to be_instance_of(Passenger)
    end
    it 'has attributes' do
        taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
        expect(taylor.name).to eq("Taylor")
        expect(taylor.age).to eq(12)
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        expect(charlie.name).to eq("Charlie")
        expect(charlie.age).to eq(18)
    end
    it 'methods work' do
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        expect(charlie.adult?).to be(true)
        expect(taylor.adult?).to be(false)
        expect(charlie.driver?).to be(false)
        expect(taylor.driver?).to be(false)
        charlie.drive
        expect(charlie.driver?).to be(true)
    end

end
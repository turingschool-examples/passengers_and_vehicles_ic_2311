require "rspec"
require "./lib/passenger"

RSpec.describe Passenger do
    describe "#Initialize" do
        it "it exists and its attributes can be read" do        
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
            expect(charlie).to be_a(Passenger)
            expect(taylor.name).to eq ("Taylor")
            expect(charlie.age).to eq(18)
        end
        it "does not start being the driver" do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
            expect(charlie.driver).to be(false)
        end
    end
    describe "#Adult?" do
        it "evaluates correctly if passenger is adult or not" do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
            expect(charlie.adult?).to be(true)
            expect(taylor.adult?).to be(false)
        end
    end
    describe "#Driver?" do
        it "evaluates correctly if passenger is the current driver" do
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
            expect(charlie.driver?).to be(false)
            charlie.drive
            expect(charlie.driver?).to be(true)
        end
    end

end

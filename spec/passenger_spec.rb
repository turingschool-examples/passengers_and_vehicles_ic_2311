require "pry"
require "rspec"
require "./lib/passenger"
require "./lib/vehicle"

RSpec.describe Passenger do
  before(:each) do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  describe "#passenger" do 
    it "has attributes" do 
      #expect(passenger).to be_an_instance_of(Passenger)
      expect(@charlie.name).to eq("Charlie")
      expect(@charlie.age).to eq(18)
      expect(@charlie.adult?).to eq(true)
      expect(@taylor.adult?).to eq(false)
      expect(@charlie.driver?).to eq(false)

      @charlie.drive 

      expect(@charlie.driver?).to eq(true)
      
    end
  end



end



require './lib/passenger'

RSpec.describe Passenger do
    before(:each) do
        passenger_details = { "name" => :name, "age" => :age, "drive" => @drive }
        @passenger = Passenger.new(passenger_details)
      @charlie = Passenger.new({name: "Charlie", age: 18, drive: false})
      @taylor = Passenger.new({name:  "Taylor", age: 12, drive: false})
    end



  describe "#initialize" do
  it "can initialize new class" do
   expect(@passenger).to be_instance_of(Passenger)
  end
  end


  describe "#name" do
  it "can give passengers names" do
    expect(@charlie.name).to eq("Charlie")
    expect(@taylor.name).to eq("Taylor")
  end
  end

#  charlie.name
describe "#age" do
it "can tell passengers age" do
    expect(@charlie.age).to eq(18)
    expect(@taylor.age).to eq(12)
end
end
#  charlie.age

describe "#adult?" do
it "can tell if passenger is an adult" do
    expect(@charlie.adult?).to eq(true)
    expect(@taylor.adult?).to eq(false)
end
end



#  charlie.adult?


#  taylor.adult?

describe "#driver?" do
it "can tell if passenger is a driver" do
    expect(@charlie.driver?).to eq(false)
end
end

#  charlie.driver?

describe "#drive" do
it "gives the ability to drive" do
  expect(@charlie.driver?).to eq(false) # Initially, Charlie can't drive
  @charlie.drive
  expect(@charlie.driver?).to eq(true) # After calling drive, Charlie can drive

end
end
end
#  charlie.drive

#  charlie.driver?


#  require './lib/passenger'
# # => true

# pry(main)> charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
# # => #<Passenger:0x00007fc1ad88b3c0...>

# pry(main)> taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
# # => #<Passenger:0x00007fe0da2cf1b0...>

# pry(main)> charlie.name
# # => "Charlie"

# pry(main)> charlie.age
# # => 18

# pry(main)> charlie.adult?
# # => true

# pry(main)> taylor.adult?
# # => false

# pry(main)> charlie.driver?
# # => false

# pry(main)> charlie.drive

# pry(main)> charlie.driver?
# # => true
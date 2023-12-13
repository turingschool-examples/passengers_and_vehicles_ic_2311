require './lib/vehicle'
require './lib/passenger'
RSpec.describe Vehicle do
    before(:each) do
    @vehicle = Vehicle.new("2001", "Honda", "Civic") 
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    @jude = Passenger.new({"name" => "Jude", "age" => 20})    
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
    end  


 describe "#information" do
it "can tell what year the vehicle is" do
    expect(@vehicle.year).to eq("2001")
    end

it "can tell what make the vehicle is" do
    expect(@vehicle.make).to eq("Honda")
    end
it "can tell what model the vehicle is" do
    expect(@vehicle.model).to eq("Civic")
    end
 end

 describe "#speeding" do
 it "can tell if it's speeding" do
    expect(@vehicle.speeding?).to eq(false)
    @vehicle.speed
    expect(@vehicle.speeding?).to eq(true)
  end
end
 end
 







# pry(main)> require './lib/vehicle'
# # => true

# pry(main)> require './lib/passenger'
# # => true

# pry(main)> vehicle = Vehicle.new("2001", "Honda", "Civic")    
# # => #<Vehicle:0x00007fe0da9c63d8...>

# pry(main)> vehicle.year
# # => "2001"

# pry(main)> vehicle.make
# # => "Honda"

# pry(main)> vehicle.model
# # => "Civic"

# pry(main)> vehicle.speeding?
# # => false

# pry(main)> vehicle.speed

# pry(main)> vehicle.speeding?
# # => true

# pry(main)> vehicle.passengers
# # => []

# pry(main)> charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
# # => #<Passenger:0x00007fe0da1ec450...>

# pry(main)> jude = Passenger.new({"name" => "Jude", "age" => 20})    
# # => #<Passenger:0x00007fe0da2730e0...>

# pry(main)> taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
# # => #<Passenger:0x00007fe0da2cf1b0...>

# pry(main)> vehicle.add_passenger(charlie)    

# pry(main)> vehicle.add_passenger(jude)    

# pry(main)> vehicle.add_passenger(taylor)    

# pry(main)> vehicle.passengers
# # => [#<Passenger:0x00007fe0da1ec450...>, #<Passenger:0x00007fe0da2730e0...>, #<Passenger:0x00007fe0da2cf1b0...>]

# pry(main)> vehicle.num_adults
# # => 2
# ```
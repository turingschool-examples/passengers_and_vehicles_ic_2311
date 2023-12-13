require './lib/vehicle'
require './lib/passenger'
require './lib/park_revenue'

RSpec.describe do
  before do
    @park_1 = ParkRevenue.new("Zions", $15)
    @park_2 = ParkRevenue.new("Bryce", $10)
    @vehicle_1 = Vehicle.new("2001", "Honda", "Civic")  
    @vehicle_2 = Vehicle.new("2000", "Ford", "Focus")  
    @vehicle_3 = Vehicle.new("2016", "Jeep", "Cherokee")  
  end

  it "has readable attributes" do
    expect(@park_1.name).to eq("Zions")
    expect(@park_1.admission_price).to eq($15)
  end

  it "knows the number of @vehicles_entered the park" do
    expect(@park_1.vehicles_entered).to eq([])

    @park_1.enter_park(@vehicle_1)
    @park_1.enter_park(@vehicle_2)
    @park_2.enter_park(@vehicle_3)

    expect(@park_1.vehicles_entered).to eq([@vehicle_1, @vehicle_2])
    expect(@park_2.vehicles_entered).to eq([@vehicle_3])
  end

  it "knows the passengers that enter the park" do
    expect(@park_1.passengers_entered).to eq(0)
 
    @park_1.enter_park(@vehicle_1)
    @park_1.enter_park(@vehicle_2)
    @park_2.enter_park(@vehicle_3)


    expect(@park_1.number_passengers_entered).to eq(3 #plus @vehicle_2's passengers)
        #@vehicle doesn't have passengers here yet.  Do I need to execute #add_passenger in this `it` block?

  end

  it '#admission_paid after vehicle enters park' do
    expect(@revenue).to eq(0)

  end
end
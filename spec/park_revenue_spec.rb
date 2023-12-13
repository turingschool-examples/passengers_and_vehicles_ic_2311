require './lib/vehicle'
require './lib/passenger'
require './lib/park_revenue'

RSpec.describe do
  before do
    @park_1 = ParkRevenue.new("Zions", $15)
    @park_2 = ParkRevenue.new("Bryce", $10)
    @park_3 = ParkRevenue.new("Glacier", $20)
  end

  it "has readable attributes" do
    expect(@park_1.name).to eq("Zions")
    expect(@park_1.admission_price).to eq($15)
  end
end
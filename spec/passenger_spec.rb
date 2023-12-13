require './lib/passenger'
true

RSpec.describe Passenger do
  before do
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
  end

  it 'exists' do
    expect(@charlie.name).to eq("Charlie")
    expect(@charlie.age).to eq(18)
  end

  it '#adult' do
  expect(@charlie.adult?).to eq(true)
  expect(@taylor.adult?).to eq(false)
  end

  it '#driver?' do
  expect(@charlie.driver?).to eq(false)

  @charlie.drive
  @taylor.drive
  
  expect(@charlie.driver?).to eq(true)
  expect(@taylor.driver?).to eq(false)
  end
end




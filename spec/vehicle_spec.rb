require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
  before do
    vehicle = Vehicle.new("2001", "Honda", "Civic")  
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    #<Passenger:0x00007fe0da1ec450...>
    jude = Passenger.new({"name" => "Jude", "age" => 20}) 
    #<Passenger:0x00007fe0da2730e0...>
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    #<Passenger:0x00007fe0da2cf1b0...>
  end

  it 'has attributes' do
    expect(vehicle.year).to eq("2001")
    expect(vehicle.make).to eq("Honda")
    expect(vehicle.model).to eq("Civic")
  end

  it 'can assess if vehicle is #speeding' do
    expect(vehicle.speeding?).to eq(false)

    vehicle.speed
    
    expect(vehicle.speeding?).to eq(true)
  end

  it 'can #add_passenger and count #num_adults' do
    expect(vehicle.passengers).to eq([])

    vehicle.add_passenger(charlie)    
    vehicle.add_passenger(jude)    
    vehicle.add_passenger(taylor)    
    
    expect(vehicle.passengers).to eq()
    #[#<Passenger:0x00007fe0da1ec450...>, #<Passenger:0x00007fe0da2730e0...>, #<Passenger:0x00007fe0da2cf1b0...>]
    expect(vehicle.num_adults).to eq()
    2
    #<Vehicle:0x00007fe0da9c63d8...>
  end

end



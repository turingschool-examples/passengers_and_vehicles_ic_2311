require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do
    before (:each) do
        @acadia = Park.new({name: "Acadia", admission: 60})
        @glacier = Park.new({name:"Glacier", admission: 55})
    end

    it "is a Park with park details" do
        expect(@acadia).to be_an_instance_of(Park)
        expect(@acadia.name).to eq("Acadia")
        expect(@acadia.admission).to eq(60)
    end

    it 'lists admitted cars' do
        expect(@acadia.vehicles).to eq([])

        vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
        vehicle_2 = Vehicle.new("2022", "Ford", "Fusion")
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        jude = Passenger.new({"name" => "Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        vehicle_1.add_passenger(charlie)
        vehicle_1.add_passenger(taylor)
        vehicle_2.add_passenger(jude)
        @acadia.enter_park(vehicle_1)
        @acadia.enter_park(vehicle_2)

        expect(@acadia.vehicles).to eq([vehicle_1, vehicle_2])
        expect(@glacier.vehicles).to eq([])
    end

    it 'lists admitted passengers' do
        vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
        vehicle_2 = Vehicle.new("2022", "Ford", "Fusion")
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        jude = Passenger.new({"name" => "Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        vehicle_1.add_passenger(charlie)
        vehicle_1.add_passenger(taylor)
        vehicle_2.add_passenger(jude)
        @acadia.enter_park(vehicle_1)
        @acadia.enter_park(vehicle_2)

        expect(@acadia.passenger_list).to eq([charlie, taylor, jude])
        expect(@glacier.passenger_list).to eq([])
    end

    it "calculates revenue" do
        expect(@acadia.revenue).to eq(0)

        vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
        vehicle_2 = Vehicle.new("2022", "Ford", "Fusion")
        vehicle_3 = Vehicle.new("2012", "Chevy", "Malibu")
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        jude = Passenger.new({"name" => "Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        tom = Passenger.new({"name" => "Tom", "age" => 33})
        vehicle_1.add_passenger(charlie)
        vehicle_1.add_passenger(taylor)
        vehicle_2.add_passenger(jude)
        vehicle_3.add_passenger(tom)
        @acadia.enter_park(vehicle_1)
        @acadia.enter_park(vehicle_2)
        @glacier.enter_park(vehicle_3)

        expect(@acadia.revenue).to eq(120)
        expect(@glacier.revenue).to eq(55)
    end
end
require './lib/passenger'
require './lib/vehicle'
require './lib/park'
require './lib/nps_data'

RSpec.describe NpsData do
    before (:each) do
        @acadia = Park.new({name: "Acadia", admission: 60})
        @glacier = Park.new({name:"Glacier", admission: 55})

        @vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
        @vehicle_2 = Vehicle.new("2022", "Ford", "Fusion")
        @vehicle_3 = Vehicle.new("2012", "Chevy", "Malibu")
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        @sally = Passenger.new({"name" => "Sally", "age" => 4})
        @tom = Passenger.new({"name" => "Tom", "age" => 33})
        @vehicle_1.add_passenger(@charlie)
        @vehicle_1.add_passenger(@taylor)
        @vehicle_2.add_passenger(@jude)
        @vehicle_3.add_passenger(@tom)
        @vehicle_3.add_passenger(@sally)
        @acadia.enter_park(@vehicle_1)
        @acadia.enter_park(@vehicle_2)
        @glacier.enter_park(@vehicle_3)

        @nps = NpsData.new([@acadia, @glacier])
    end

    it "contains only Park instances" do
        expect(@nps).to be_an_instance_of(NpsData)
        
    end

    it "lists all patron names alphabetically" do
        expect(@nps.all_patrons).to eq(["Charlie", "Jude", "Sally", "Taylor", "Tom"])
    end

    it "lists all minor names alphabetically" do
        expect(@nps.all_minors).to eq(["Sally", "Taylor"])
    end

    it "lists all adult names alphabetically" do
        expect(@nps.all_adults).to eq(["Charlie", "Jude", "Tom"])
    end
end
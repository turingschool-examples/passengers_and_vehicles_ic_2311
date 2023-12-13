require "rspec"
require "./lib/passenger"
require "./lib/vehicle"
require "./lib/park"

RSpec.describe Park do

    describe "#Initialize" do
        it "exists" do
            rocky_mtn = Park.new("Rocky Mountain" , 200)
            expect(rocky_mtn).to be_a(Park)
        end
        it "has a name and admission price" do
            rocky_mtn = Park.new("Rocky Mountain" , 200)
            expect(rocky_mtn.name).to eq("Rocky Mountain")
            expect(rocky_mtn.admission_price).to eq(200)
        end
        it "when initialized starts with no vehicles and passengers that entered" do
            rocky_mtn = Park.new("Rocky Mountain" , 200)
            expect(rocky_mtn.vehicles).to eq([])
        end
        it "when initialized starts with no revenue" do
            rocky_mtn = Park.new("Rocky Mountain" , 200)
            expect(rocky_mtn.revenue).to eq(0)
        end
    end

    describe "#Add vehicles" do
        it "can add vehicles and return a list" do
            rocky_mtn = Park.new("Rocky Mountain" , 200)
            vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
            vehicle_2 = Vehicle.new("2019", "Hyundai", "SantaFe")
            vehicle_3 = Vehicle.new("2005", "Suzuki", "SX4")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20}) 
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
            max = Passenger.new({"name" => "Max", "age" => 25})
            violet = Passenger.new({"name" => "Violet", "age" => 5})
            liz = Passenger.new({"name" => "Liz", "age" => 40})
            vehicle_1.add_passenger(charlie)
            vehicle_1.add_passenger(jude)
            vehicle_1.add_passenger(taylor)
            charlie.drive
            vehicle_1.speed
            vehicle_2.add_passenger(liz)
            vehicle_2.add_passenger(violet)
            liz.drive
            vehicle_2.speed
            vehicle_3.add_passenger(max)
            max.drive
            rocky_mtn.add_vehicle(vehicle_1)
            rocky_mtn.add_vehicle(vehicle_2)
            expect(rocky_mtn.vehicles).to eq([vehicle_1 , vehicle_2])
            rocky_mtn.add_vehicle(vehicle_3)
            expect(rocky_mtn.vehicles).to eq([vehicle_1 , vehicle_2])
        end
        it "can return a list of the passengers" do
            rocky_mtn = Park.new("Rocky Mountain" , 200)
            vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
            vehicle_2 = Vehicle.new("2019", "Hyundai", "SantaFe")
            vehicle_3 = Vehicle.new("2005", "Suzuki", "SX4")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20}) 
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
            max = Passenger.new({"name" => "Max", "age" => 25})
            violet = Passenger.new({"name" => "Violet", "age" => 5})
            liz = Passenger.new({"name" => "Liz", "age" => 40})
            vehicle_1.add_passenger(charlie)
            vehicle_1.add_passenger(jude)
            vehicle_1.add_passenger(taylor)
            charlie.drive
            vehicle_1.speed
            vehicle_2.add_passenger(liz)
            vehicle_2.add_passenger(violet)
            liz.drive
            vehicle_2.speed
            vehicle_3.add_passenger(max)
            rocky_mtn.add_vehicle(vehicle_1)
            rocky_mtn.add_vehicle(vehicle_2)
            expect(rocky_mtn.passengers).to eq([charlie, jude, taylor, liz, violet])
        end
    end

    describe "#Revenue" do
        it "can return the correct revenue" do
            rocky_mtn = Park.new("Rocky Mountain" , 200)
            vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
            vehicle_2 = Vehicle.new("2019", "Hyundai", "SantaFe")
            vehicle_3 = Vehicle.new("2005", "Suzuki", "SX4")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20}) 
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
            max = Passenger.new({"name" => "Max", "age" => 25})
            violet = Passenger.new({"name" => "Violet", "age" => 5})
            liz = Passenger.new({"name" => "Liz", "age" => 40})
            vehicle_1.add_passenger(charlie)
            vehicle_1.add_passenger(jude)
            vehicle_1.add_passenger(taylor)
            charlie.drive
            vehicle_1.speed
            vehicle_2.add_passenger(liz)
            vehicle_2.add_passenger(violet)
            liz.drive
            vehicle_2.speed
            vehicle_3.add_passenger(max)
            max.drive
            vehicle_3.speed
            rocky_mtn.add_vehicle(vehicle_1)
            expect(rocky_mtn.revenue).to eq(400)
            rocky_mtn.add_vehicle(vehicle_2)
            expect(rocky_mtn.revenue).to eq(600)
        end
    end

    describe "#Attendees Lists" do
        it "Returns an alphabetically sorted list of all attendees" do
            rocky_mtn = Park.new("Rocky Mountain" , 200)
            vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
            vehicle_2 = Vehicle.new("2019", "Hyundai", "SantaFe")
            vehicle_3 = Vehicle.new("2005", "Suzuki", "SX4")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20}) 
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
            max = Passenger.new({"name" => "Max", "age" => 25})
            violet = Passenger.new({"name" => "Violet", "age" => 5})
            liz = Passenger.new({"name" => "Liz", "age" => 40})
            vehicle_1.add_passenger(charlie)
            vehicle_1.add_passenger(jude)
            vehicle_1.add_passenger(taylor)
            charlie.drive
            vehicle_1.speed
            vehicle_2.add_passenger(liz)
            vehicle_2.add_passenger(violet)
            liz.drive
            vehicle_2.speed
            vehicle_3.add_passenger(max)
            max.drive
            vehicle_3.speed
            rocky_mtn.add_vehicle(vehicle_1)
            rocky_mtn.add_vehicle(vehicle_2)
            rocky_mtn.add_vehicle(vehicle_3)
            expect(rocky_mtn.attendees).to eq(["Charlie", "Jude", "Liz", "Max", "Taylor", "Violet"])
        end
        it "Returns an alphabetically sorted list of all adult attendees" do
            rocky_mtn = Park.new("Rocky Mountain" , 200)
            vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
            vehicle_2 = Vehicle.new("2019", "Hyundai", "SantaFe")
            vehicle_3 = Vehicle.new("2005", "Suzuki", "SX4")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20}) 
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
            max = Passenger.new({"name" => "Max", "age" => 25})
            violet = Passenger.new({"name" => "Violet", "age" => 5})
            liz = Passenger.new({"name" => "Liz", "age" => 40})
            vehicle_1.add_passenger(charlie)
            vehicle_1.add_passenger(jude)
            vehicle_1.add_passenger(taylor)
            charlie.drive
            vehicle_1.speed
            vehicle_2.add_passenger(liz)
            vehicle_2.add_passenger(violet)
            liz.drive
            vehicle_2.speed
            vehicle_3.add_passenger(max)
            max.drive
            vehicle_3.speed
            rocky_mtn.add_vehicle(vehicle_1)
            rocky_mtn.add_vehicle(vehicle_2)
            rocky_mtn.add_vehicle(vehicle_3)
            expect(rocky_mtn.adult_attendees).to eq(["Charlie", "Jude", "Liz", "Max"])
        end
    end
end
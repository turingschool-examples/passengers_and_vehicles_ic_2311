require './lib/vehicle'
require './lib/passenger'
require './lib/park'
require 'rspec'
require 'pry'

RSpec.describe Park do
    describe '#initialize' do
        it 'exists' do
            park = Park.new("Yosemite", 45)

            expect(park).to be_a(Park)
        end
    end

    describe '#name' do
        it 'has a name' do
            park = Park.new("Yosemite", 45)

            expect(park.name).to eq("Yosemite")
        end
    end

    describe '#price' do
        it 'has an admission price' do
            park = Park.new("Yosemite", 45)

            expect(park.price).to eq(45)
        end
    end

    describe '#admitted_vehicles' do
        it 'starts with no vehicles admitted' do
            park = Park.new("Yosemite", 45)

            expect(park.admitted_vehicles).to eq([])
        end

        it 'can admit vehicles' do
            park = Park.new("Yosemite", 45)
            vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
            vehicle_2 = Vehicle.new("2001", "Honda", "Civic")

            park.admit_vehicle(vehicle_1)
            park.admit_vehicle(vehicle_2)

            expect(park.admitted_vehicles).to eq([vehicle_1, vehicle_2])
        end
    end

    describe '#vehicle_passengers' do
        it 'starts with no vehicle passengers' do
            park = Park.new("Yosemite", 45)

            expect(park.vehicle_passengers).to eq([])
        end

        it 'can tell what passengers where admited to the park in their vehicles' do
            park = Park.new("Yosemite", 45)
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            vehicle.add_passenger(charlie)
            vehicle.add_passenger(jude)
            vehicle.add_passenger(taylor)

            park.admit_vehicle(vehicle)

            expect(park.vehicle_passengers).to eq([charlie, jude, taylor])
        end
    end

    describe '#revenue' do
        it 'starts with no revenue collected' do
            park = Park.new("Yosemite", 45)

            expect(park.revenue).to eq(0)
        end

        it 'collects the admission price for each adult in a vehicle' do
            park = Park.new("Yosemite", 45)
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            vehicle.add_passenger(charlie)
            vehicle.add_passenger(jude)
            vehicle.add_passenger(taylor)

            park.admit_vehicle(vehicle)

            expect(park.revenue).to eq(90)
        end
    end

    describe '#revenue_collector' do
        it 'collects revenue equal to admission price * number of adults in vehicle' do
            park = Park.new("Yosemite", 45)
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            vehicle.add_passenger(charlie)
            vehicle.add_passenger(jude)
            vehicle.add_passenger(taylor)

            park.revenue_collector(vehicle)

            expect(park.revenue).to eq(90)
        end
    end

    describe '#patron_sorter' do
        it 'can sort a list of patrons alphabetically by name' do
            park = Park.new("Yosemite", 45)
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            vehicle.add_passenger(taylor)
            vehicle.add_passenger(charlie)
            vehicle.add_passenger(jude)
            
            park.admit_vehicle(vehicle)

            expect(park.patron_sorter(vehicle.passengers)).to eq([charlie, jude, taylor])
        end
    end

    describe '#patrons' do
        it 'can tell you all of the patrons in the park in alphabetical order' do
            park = Park.new("Yosemite", 45)
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            vehicle.add_passenger(charlie)
            vehicle.add_passenger(jude)
            vehicle.add_passenger(taylor)
            
            park.admit_vehicle(vehicle)

            expect(park.patrons).to eq([charlie, jude, taylor])
        end
    end

    describe '#adult_patrons' do
        it 'can tell you all of the patrons over 18 in the park in alphabetical order' do
            park = Park.new("Yosemite", 45)
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            vehicle.add_passenger(charlie)
            vehicle.add_passenger(jude)
            vehicle.add_passenger(taylor)
            
            park.admit_vehicle(vehicle)

            expect(park.adult_patrons).to eq([charlie, jude])
        end
    end

    describe '#minor_patrons' do
        it 'can tell you all of the patrons under 18 in the park in alphabetical order' do
            park = Park.new("Yosemite", 45)
            vehicle = Vehicle.new("2001", "Honda", "Civic")
            charlie = Passenger.new({"name" => "Charlie", "age" => 18})
            jude = Passenger.new({"name" => "Jude", "age" => 20})
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
            gus = Passenger.new({"name" => "Gus", "age" => 15})

            vehicle.add_passenger(charlie)
            vehicle.add_passenger(jude)
            vehicle.add_passenger(taylor)
            vehicle.add_passenger(gus)
            
            park.admit_vehicle(vehicle)

            expect(park.minor_patrons).to eq([gus, taylor])
        end
    end
end
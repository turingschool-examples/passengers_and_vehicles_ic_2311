require './lib/passenger'

RSpec.describe Passenger do 
    describe '#initialize' do 
        it 'initializes' do 
            passenger = Passenger.new({'name' => 'Charlie', 'age' => 18})

            expect(passenger).to be_a(Passenger)
        end
        
        it 'has a name' do
            passenger = Passenger.new({'name' => 'Charlie', 'age' => 18})

            expect(passenger.name).to eq('Charlie')
        end 

        it 'has an age' do 
            passenger = Passenger.new({'name' => 'Charlie', 'age' => 18})

            expect(passenger.age).to eq(18)
        end 
    end 

    describe '#adult?' do 
        it 'is an adult' do 
            charlie = Passenger.new({'name' => 'Charlie', 'age' => 18})

            expect(charlie.adult?).to eq(true)
        end 

        it 'is not an adult if younger than 18' do 
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})

            expect(taylor.adult?).to eq(false)
        end 
    end 

    describe '#drive' do 
        it 'can drive' do 
            charlie = Passenger.new({'name' => 'Charlie', 'age' => 18})
            charlie.drive 

            expect(charlie.drive).to eq(true)
        end 

        it 'can not drive' do 
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
            taylor.drive 

            expect(taylor.drive).to eq(false)
        end 
    end 

    describe '#driver?' do 
        it 'is the driver' do 
        charlie = Passenger.new({'name' => 'Charlie', 'age' => 18})
        charlie.drive 

        expect(charlie.driver?).to eq(true)
        end 

        it 'is not the drive' do 
            taylor = Passenger.new({"name" => "Taylor", "age" => 12})
            taylor.drive 

            expect(taylor.driver?).to eq(false)
        end 
    end 

end 
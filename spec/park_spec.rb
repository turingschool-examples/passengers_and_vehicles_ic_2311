require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Park do 
    describe '#initialize' do 
        it 'initializes' do 
            park_data = {name: "Yosemite", admission_price: 10}
            park = Park.new(park_data) 

            expect(park).to be_a(Park)
        end 

        it 'has a park name' do 
            yosemite_data = {name: "Yosemite", admission_price: 10}
            park_data = [yosemite_data]
            park = Park.new(yosemite_data)

            expect(park.name).to eq("Yosemite")
        end 

        it 'has an admission price' do 
            yosemite_data = {name: "Yosemite", admission_price: 10}
            park_data = [yosemite_data]
            park = Park.new(yosemite_data)

            expect(park.admission_price).to eq(10)
        end 
    end 
end 

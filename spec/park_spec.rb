require 'rspec'
require './lib/park'

describe Park do
  describe 'Park' do
    it 'exists' do
      the_medows = Park.new("The Medows", 15)

      expect(the_medows).to be_instance_of(Park)
      expect(the_medows.park_data).to eq("Welcome to The Medows park, the admission fee is 15 dollars")
    end
  end
end

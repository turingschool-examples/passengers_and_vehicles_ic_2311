require 'spec_helper'

RSpec.describe Passenger do
  let(:taylor) {Passenger.new({"name"=>"Taylor", "age"=>12})}
  let(:charlie) { Passenger.new({"name"=>"Charlie", "age"=>18})}
  describe "#initialize" do
    it "can initialize" do
      expect(charlie).to be_a (Passenger)
      expect(charlie.name).to eq ("Charlie")
      expect(charlie.age).to eq (18)
    end
  end


end

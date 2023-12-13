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

  describe "#adult" do
    it "return true if the passenger is 18 or older" do
      expect(charlie.adult?).to eq (true)
      expect(taylor.adult?).to eq (false)
    end
  end

  describe "#is_driver?" do
    it "is a driver that  set to false by default" do
      expect(charlie.driver).to eq (false)
    end
  end

  describe '#drive' do
    it "change driver status from false to true" do
      charlie.drive
      expect(charlie.driver).to eq (true)
    end
  end
end

require 'spec_helper'

RSpec.describe Park do
  let(:yosemite) {Park.new("Yosemite", "$50")}

  describe "#initialize" do
    it "can initialize" do
      expect(yosemite).to be_a (Park)
      expect(yosemite.name).to eq ("Yosemite")
      expect(yosemite.addmission_price).to eq ("$50")
      expect(yosemite.vehicles).to eq ([])
    end
  end
end

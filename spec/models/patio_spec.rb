require "rails_helper"

describe Patio do
  context "creates standard patio with no seats" do
    let!(:atwood) { create(:patio) }

    it 'has the required objects' do
      expect(atwood.name).to eq 'Atwood Tavern'
      expect(atwood.description).to eq 'Hidden gem'
      expect(atwood.neighborhood).to eq 'Inmann Square'
    end
  end
end

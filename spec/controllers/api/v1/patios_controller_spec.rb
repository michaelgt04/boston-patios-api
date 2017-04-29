require "rails_helper"

describe Api::V1::PatiosController do
  let!(:atwood) { create(:patio) }
  let!(:bukowski) { create(:patio, name: 'Bukowski Tavern', description: 'Not a true patio.') }

  describe "#index" do
    context "user" do
      it "should return json respresentation of all patios" do
        get :index
        json = JSON.parse(response.body)
        first_restaurant = json[0]['patio']
        second_restaurant = json[1]['patio']

        expect(first_restaurant['id']).to eq atwood.id
        expect(first_restaurant['name']).to eq atwood.name
        expect(first_restaurant['description']).to eq atwood.description
        expect(first_restaurant['neighborhood']).to eq atwood.neighborhood

        expect(second_restaurant['id']).to eq bukowski.id
        expect(second_restaurant['name']).to eq bukowski.name
        expect(second_restaurant['description']).to eq bukowski.description
        expect(second_restaurant['neighborhood']).to eq bukowski.neighborhood
      end
    end
  end

  describe "#show" do
    context "user" do
      it "should return json respresentation of the first patio" do
        get :show, params: { id: atwood.id }
        json = JSON.parse(response.body)
        first_restaurant = json['patio']

        expect(first_restaurant['id']).to eq atwood.id
        expect(first_restaurant['name']).to eq atwood.name
        expect(first_restaurant['description']).to eq atwood.description
        expect(first_restaurant['neighborhood']).to eq atwood.neighborhood

        expect(first_restaurant['id']).to_not eq bukowski.id
      end
    end
  end
end

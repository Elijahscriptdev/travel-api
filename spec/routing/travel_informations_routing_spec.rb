require "rails_helper"

RSpec.describe TravelInformationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/travel_informations").to route_to("travel_informations#index")
    end

    it "routes to #show" do
      expect(get: "/travel_informations/1").to route_to("travel_informations#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/travel_informations").to route_to("travel_informations#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/travel_informations/1").to route_to("travel_informations#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/travel_informations/1").to route_to("travel_informations#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/travel_informations/1").to route_to("travel_informations#destroy", id: "1")
    end
  end
end

require "rails_helper"

RSpec.describe TransportCompaniesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/transport_companies").to route_to("transport_companies#index")
    end

    it "routes to #show" do
      expect(get: "/transport_companies/1").to route_to("transport_companies#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/transport_companies").to route_to("transport_companies#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/transport_companies/1").to route_to("transport_companies#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/transport_companies/1").to route_to("transport_companies#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/transport_companies/1").to route_to("transport_companies#destroy", id: "1")
    end
  end
end

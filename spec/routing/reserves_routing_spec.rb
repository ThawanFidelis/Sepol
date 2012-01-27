require "spec_helper"

describe ReservesController do
  describe "routing" do

    it "routes to #index" do
      get("/reserves").should route_to("reserves#index")
    end

    it "routes to #new" do
      get("/reserves/new").should route_to("reserves#new")
    end

    it "routes to #show" do
      get("/reserves/1").should route_to("reserves#show", :id => "1")
    end

    it "routes to #edit" do
      get("/reserves/1/edit").should route_to("reserves#edit", :id => "1")
    end

    it "routes to #create" do
      post("/reserves").should route_to("reserves#create")
    end

    it "routes to #update" do
      put("/reserves/1").should route_to("reserves#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/reserves/1").should route_to("reserves#destroy", :id => "1")
    end

  end
end

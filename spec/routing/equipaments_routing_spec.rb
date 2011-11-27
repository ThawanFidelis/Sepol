require "spec_helper"

describe EquipamentsController do
  describe "routing" do

    it "routes to #index" do
      get("/equipaments").should route_to("equipaments#index")
    end

    it "routes to #new" do
      get("/equipaments/new").should route_to("equipaments#new")
    end

    it "routes to #show" do
      get("/equipaments/1").should route_to("equipaments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/equipaments/1/edit").should route_to("equipaments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/equipaments").should route_to("equipaments#create")
    end

    it "routes to #update" do
      put("/equipaments/1").should route_to("equipaments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/equipaments/1").should route_to("equipaments#destroy", :id => "1")
    end

  end
end

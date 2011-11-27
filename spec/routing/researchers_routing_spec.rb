require "spec_helper"

describe ResearchersController do
  describe "routing" do

    it "routes to #index" do
      get("/researchers").should route_to("researchers#index")
    end

    it "routes to #new" do
      get("/researchers/new").should route_to("researchers#new")
    end

    it "routes to #show" do
      get("/researchers/1").should route_to("researchers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/researchers/1/edit").should route_to("researchers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/researchers").should route_to("researchers#create")
    end

    it "routes to #update" do
      put("/researchers/1").should route_to("researchers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/researchers/1").should route_to("researchers#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe Bounenkai2015sController do
  describe "routing" do

    it "routes to #index" do
      get("/bounenkai2015s").should route_to("bounenkai2015s#index")
    end

    it "routes to #new" do
      get("/bounenkai2015s/new").should route_to("bounenkai2015s#new")
    end

    it "routes to #show" do
      get("/bounenkai2015s/1").should route_to("bounenkai2015s#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bounenkai2015s/1/edit").should route_to("bounenkai2015s#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bounenkai2015s").should route_to("bounenkai2015s#create")
    end

    it "routes to #update" do
      put("/bounenkai2015s/1").should route_to("bounenkai2015s#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bounenkai2015s/1").should route_to("bounenkai2015s#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe BuyInsController do
  describe "routing" do

    it "routes to #index" do
      get("/buy_ins").should route_to("buy_ins#index")
    end

    it "routes to #new" do
      get("/buy_ins/new").should route_to("buy_ins#new")
    end

    it "routes to #show" do
      get("/buy_ins/1").should route_to("buy_ins#show", :id => "1")
    end

    it "routes to #edit" do
      get("/buy_ins/1/edit").should route_to("buy_ins#edit", :id => "1")
    end

    it "routes to #create" do
      post("/buy_ins").should route_to("buy_ins#create")
    end

    it "routes to #update" do
      put("/buy_ins/1").should route_to("buy_ins#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/buy_ins/1").should route_to("buy_ins#destroy", :id => "1")
    end

  end
end
require "rails_helper"

RSpec.describe "routes for Events", :type => :routing do
  it "routes /events to the events controller" do
    expect(get("/events")).
      to route_to("events#index")
  end


end
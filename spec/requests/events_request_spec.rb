require "rails_helper"

RSpec.describe EventsController, :type => :controller do
  describe "GET index" do
    it "has a 302 status code" do
      get :index
      expect(response.status).to eq(302)
    end
  end

  describe "GET index" do
    it "doesn't matter" do
    end
  end

	describe "GET events#show" do
		it "should render events#show template" do
	  end
  end

	describe "GET events#new" do
		it "should render events#new template" do
		end
	end

  describe "responds to" do
    it "responds to html by default" do
      post :create, :params => { :widget => { :name => "Shashank" } }
      expect(response.content_type).to eq "text/html"
    end

    it "responds to custom formats when provided in the params" do
      post :create, :params => { :widget => { :name => "Shashank" }, :format => :json }
      expect(response.content_type).to eq "application/json"
    end
  end


  # render_views
  # describe "GET index" do
  #   it "has a widgets related heading" do
  #     get :index
  #     expect(response.body).to match /<h1>.*events/im
  #   end
  # end

end
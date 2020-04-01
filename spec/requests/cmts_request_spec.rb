require "rails_helper"

RSpec.describe EventsController, :type => :controller do
  describe "GET index" do
    it "has a 302 status code" do
      get :create
      expect(response.status).to eq(302)
    end
  end

  describe "GET index" do
    it "doesn't matter" do
    end
  end

	describe "GET cmts#show" do
		it "should render cmts#show template" do
	  end
  end

	describe "GET cmts#new" do
		it "should render cmts#new template" do
		end
	end

  describe "responds to" do
    it "responds to html by default" do
      post :create, :params => { :widget => { :commenter => "Shashank" } }
      expect(response.content_type).to eq "text/html"
    end

    it "responds to custom formats when provided in the params" do
      post :create, :params => { :widget => { :commenter => "Shashank" }, :format => :json }
      expect(response.content_type).to eq "application/json"
    end
  end

end
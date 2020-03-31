require 'rails_helper'

# RSpec.describe "Events", type: :request do



	describe "GET index" do
    it "assigns @events" do
      team = Event.create
      get :index
      expect(assigns(:events)).to eq([event])
    end


    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  


  end





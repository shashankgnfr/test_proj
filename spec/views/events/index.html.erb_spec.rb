# require "spec_helper"

# describe "events/index.html.erb" do
#   it "displays all the events" do
  
   
#     assign :events, :params => { :widget => { :name => "Shashank" } }

#     render

#     rendered.should contain("Shashank")
    
#   end
# # end
# require "spec_helper"

# describe "rendering the widget template" do
#   it "displays the widget" do
#     assign(:event, stub_template(Event, :name => "slicer"))

#     render :template => "widgets/widget.html.erb"

#     rendered.should contain("slicer")
#   end
# end

# require 'spec_helper'
require "rails_helper"

# describe 'events/show.html.erb' do
#   it 'displays product details correctly' do
#     assign(:event, Event.create(name: 'Shirt', number: 50))

#     render

#     rendered.should contain('Shirt')
#     rendered.should contain('50')
#   end
# end


# describe "index page", type: :request do
# it "responds successfully" do
# get events_path 
# response.should == 1
# expect(response).to be_success
# expect(response).to have_http_status "200"
# end
# end

# describe "Home page", type: :request do
# it "responds successfully" do
# get root_path
# expect(response).to be_success
# expect(response).to have_http_status "200"
# end
# end

# RSpec.describe "events/index" do
#   it "displays all the widgets" do
#     assign(:events, [
#       Event.create!(:name => "slicers", :number => 7, :start_date => "2020-03-31 12:02:49", :end_date => "2020-03-31 12:02:49" ),
#       Event.create!(:name => "dicers", :number => 7, :start_date => "2020-03-31 12:02:49", :end_date => "2020-03-31 12:02:49" )
#     ])

#     render

#     expect(rendered).to match /slicers/
#     expect(rendered).to match /dicers/
#   end
# end




# RSpec.describe EventsController, :type => :controller do
#   describe "index" do
#     it "renders the index template" do
#       get :index
#       expect(response).to render_template("index")
#       expect(response.body).to eq ""
#     end
#     it "renders the events/index template" do
#       get :index
#       expect(response).to render_template("events/index")
#       expect(response.body).to eq ""
#     end
#   end
# end
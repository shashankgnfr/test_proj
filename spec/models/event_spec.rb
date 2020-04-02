require 'rails_helper'

RSpec.describe Event, type: :model do
  subject { Event.new(name: "nil", number: 7, start_date: "2020-03-31 12:02:49", end_date: "2020-03-31 12:02:49" )}
  before { subject.save}

	it "name should be present" do
		subject.name = nil
		expect(subject).to_not be_valid
	end	

	it "number should be present" do
		subject.number = nil
		expect(subject).to_not be_valid
	end	

	it "start date should be present" do
		subject.start_date = nil
		expect(subject).to_not be_valid
	end	

	it "end date should be present" do
		subject.end_date = nil
		expect(subject).to_not be_valid
	end		

  it "name should not be too long" do
		subject.name = "a"
		expect(subject).to_not be_valid
	end		

  it "name should not be too short" do
		subject.name = "a" * 30
		expect(subject).to_not be_valid
	end	

#transaction test
  it "has none to begin with" do
    expect(Event.count).to eq 0
  end


  it "has none after one was created in a previous example" do
    expect(Event.count).to eq 0
  end

  it "has one after adding one" do
    instance_double("Event", :name => "shashank")
  end

end

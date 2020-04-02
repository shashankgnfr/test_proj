require 'rails_helper'

RSpec.describe Cmt, type: :model do
  subject { Cmt.new( commenter: "nil", body: "test body", event_id: 4)}
  before { subject.save}

	it "name should be present" do
		subject.commenter = nil
		expect(subject).to_not be_valid
	end	

	it "body should be present" do
		subject.body = nil
		expect(subject).to_not be_valid
	end	

	it "event id should be present" do
		subject.event_id = nil
		expect(subject).to_not be_valid
	end	


  it "name should not be too long" do
		subject.commenter = "a"
		expect(subject).to_not be_valid
	end		

  it "name should not be too short" do
		subject.commenter = "a" * 30
		expect(subject).to_not be_valid
	end	


  it "has none to begin with" do
    expect(Cmt.count).to eq 0
  end


  it "has none after one was created in a previous example" do
    expect(Cmt.count).to eq 0
  end

  it "has one after adding one" do
    instance_double("Cmt", :commenter => "shashank")
  end

end

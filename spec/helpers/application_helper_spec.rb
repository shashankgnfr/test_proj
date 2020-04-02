require "rails_helper"

RSpec.describe ApplicationHelper, :type => :helper do
  describe "#page_title" do
    it "returns the default title" do
      expect(helper.page_title).to eq("RSpec is your friend")
    end
  end

  describe "#app_name" do
    it "includes the app name" do
      assign(:name, "This Event")
      expect(helper.app_name).to eq("The App: This Event")
    end
  end
end
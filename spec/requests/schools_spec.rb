require 'spec_helper'

describe "Schools" do
  describe "GET /schools" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get schools_path
      expect(response.status).to be(200)
    end
  end
end
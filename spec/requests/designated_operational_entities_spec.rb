require 'spec_helper'

describe "DesignatedOperationalEntities" do
  describe "GET /designated_operational_entities" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get designated_operational_entities_path
      response.status.should be(200)
    end
  end
end

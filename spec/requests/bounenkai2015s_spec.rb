require 'spec_helper'

describe "Bounenkai2015s" do
  describe "GET /bounenkai2015s" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get bounenkai2015s_path
      response.status.should be(200)
    end
  end
end

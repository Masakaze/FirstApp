require 'spec_helper'

describe "bounenkai2015s/index" do
  before(:each) do
    assign(:bounenkai2015s, [
      stub_model(Bounenkai2015),
      stub_model(Bounenkai2015)
    ])
  end

  it "renders a list of bounenkai2015s" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end

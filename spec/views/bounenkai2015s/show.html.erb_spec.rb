require 'spec_helper'

describe "bounenkai2015s/show" do
  before(:each) do
    @bounenkai2015 = assign(:bounenkai2015, stub_model(Bounenkai2015))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end

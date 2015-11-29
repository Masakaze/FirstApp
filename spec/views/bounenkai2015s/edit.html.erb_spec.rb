require 'spec_helper'

describe "bounenkai2015s/edit" do
  before(:each) do
    @bounenkai2015 = assign(:bounenkai2015, stub_model(Bounenkai2015))
  end

  it "renders the edit bounenkai2015 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bounenkai2015_path(@bounenkai2015), "post" do
    end
  end
end

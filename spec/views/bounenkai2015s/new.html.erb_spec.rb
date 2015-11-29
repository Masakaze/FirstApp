require 'spec_helper'

describe "bounenkai2015s/new" do
  before(:each) do
    assign(:bounenkai2015, stub_model(Bounenkai2015).as_new_record)
  end

  it "renders new bounenkai2015 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bounenkai2015s_path, "post" do
    end
  end
end

require 'spec_helper'

describe "reserves/edit.html.erb" do
  before(:each) do
    @reserve = assign(:reserve, stub_model(Reserve))
  end

  it "renders the edit reserve form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reserves_path(@reserve), :method => "post" do
    end
  end
end

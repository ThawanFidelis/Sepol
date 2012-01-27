require 'spec_helper'

describe "reserves/new.html.erb" do
  before(:each) do
    assign(:reserve, stub_model(Reserve).as_new_record)
  end

  it "renders new reserve form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reserves_path, :method => "post" do
    end
  end
end

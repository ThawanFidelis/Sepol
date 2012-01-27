require 'spec_helper'

describe "reserves/show.html.erb" do
  before(:each) do
    @reserve = assign(:reserve, stub_model(Reserve))
  end

  it "renders attributes in <p>" do
    render
  end
end

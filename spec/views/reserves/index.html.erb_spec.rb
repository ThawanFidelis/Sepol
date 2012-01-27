require 'spec_helper'

describe "reserves/index.html.erb" do
  before(:each) do
    assign(:reserves, [
      stub_model(Reserve),
      stub_model(Reserve)
    ])
  end

  it "renders a list of reserves" do
    render
  end
end

require 'spec_helper'

describe "professors/show" do
  before(:each) do
    @professor = assign(:professor, stub_model(Professor,
      :name => "Name",
      :hours => "Hours",
      :email => "Email",
      :website => "Website"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Hours/)
    rendered.should match(/Email/)
    rendered.should match(/Website/)
  end
end

require 'spec_helper'

describe "professors/edit" do
  before(:each) do
    @professor = assign(:professor, stub_model(Professor,
      :name => "MyString",
      :hours => "MyString",
      :email => "MyString",
      :website => "MyString"
    ))
  end

  it "renders the edit professor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", professor_path(@professor), "post" do
      assert_select "input#professor_name[name=?]", "professor[name]"
      assert_select "input#professor_hours[name=?]", "professor[hours]"
      assert_select "input#professor_email[name=?]", "professor[email]"
      assert_select "input#professor_website[name=?]", "professor[website]"
    end
  end
end

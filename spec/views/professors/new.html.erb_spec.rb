require 'spec_helper'

describe "professors/new" do
  before(:each) do
    assign(:professor, stub_model(Professor,
      :name => "MyString",
      :hours => "MyString",
      :email => "MyString",
      :website => "MyString"
    ).as_new_record)
  end

  it "renders new professor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", professors_path, "post" do
      assert_select "input#professor_name[name=?]", "professor[name]"
      assert_select "input#professor_hours[name=?]", "professor[hours]"
      assert_select "input#professor_email[name=?]", "professor[email]"
      assert_select "input#professor_website[name=?]", "professor[website]"
    end
  end
end

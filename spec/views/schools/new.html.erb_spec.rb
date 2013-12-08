require 'spec_helper'

describe "schools/new" do
  before(:each) do
    assign(:school, stub_model(School,
      :name => "MyString",
      :avatar_url => "MyString",
      :overall_rating => "9.99"
    ).as_new_record)
  end

  it "renders new school form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", schools_path, "post" do
      assert_select "input#school_name[name=?]", "school[name]"
      assert_select "input#school_avatar_url[name=?]", "school[avatar_url]"
      assert_select "input#school_overall_rating[name=?]", "school[overall_rating]"
    end
  end
end

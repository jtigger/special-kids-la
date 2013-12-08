require 'spec_helper'

describe "schools/edit" do
  before(:each) do
    @school = assign(:school, stub_model(School,
      :name => "MyString",
      :avatar_url => "MyString",
      :overall_rating => "9.99"
    ))
  end

  it "renders the edit school form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", school_path(@school), "post" do
      assert_select "input#school_name[name=?]", "school[name]"
      assert_select "input#school_avatar_url[name=?]", "school[avatar_url]"
      assert_select "input#school_overall_rating[name=?]", "school[overall_rating]"
    end
  end
end

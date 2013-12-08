require 'spec_helper'

describe "reviews/new" do
  before(:each) do
    assign(:review, stub_model(Review,
      :summary => "MyString",
      :rating => "9.99",
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reviews_path, "post" do
      assert_select "input#review_summary[name=?]", "review[summary]"
      assert_select "input#review_rating[name=?]", "review[rating]"
      assert_select "textarea#review_body[name=?]", "review[body]"
    end
  end
end

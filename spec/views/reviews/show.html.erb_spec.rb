require 'spec_helper'

describe "reviews/show" do
  before(:each) do
    @review = assign(:review, stub_model(Review,
      :summary => "Summary",
      :rating => "9.99",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Summary/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
  end
end

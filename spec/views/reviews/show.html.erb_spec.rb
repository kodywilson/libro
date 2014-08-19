require 'rails_helper'

RSpec.describe "reviews/show", :type => :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :user_name => "User Name",
      :body => "MyText",
      :book_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end

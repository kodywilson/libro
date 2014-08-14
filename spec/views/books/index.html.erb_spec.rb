require 'rails_helper'

RSpec.describe "books/index", :type => :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :title => "Title",
        :summary => "MyText",
        :author => "Author",
        :picture => "Picture",
        :contributor => "Contributor",
        :isbn => 1,
        :rating => 2,
        :following => false,
        :approved => false,
        :active => false
      ),
      Book.create!(
        :title => "Title",
        :summary => "MyText",
        :author => "Author",
        :picture => "Picture",
        :contributor => "Contributor",
        :isbn => 1,
        :rating => 2,
        :following => false,
        :approved => false,
        :active => false
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "h2", :text => "Title".to_s, :count => 2
#    assert_select "tr>td", :text => "MyText".to_s, :count => 2
#    assert_select "tr>td", :text => "Author".to_s, :count => 2
#    assert_select "tr>td", :text => "Picture".to_s, :count => 2
#    assert_select "tr>td", :text => "Contributor".to_s, :count => 2
#    assert_select "tr>td", :text => 1.to_s, :count => 2
#    assert_select "tr>td", :text => 2.to_s, :count => 2
#    assert_select "tr>td", :text => false.to_s, :count => 2
#    assert_select "tr>td", :text => false.to_s, :count => 2
#    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

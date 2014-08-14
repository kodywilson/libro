require 'rails_helper'

RSpec.describe "books/edit", :type => :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "MyString",
      :summary => "MyText",
      :author => "MyString",
      :picture => "MyString",
      :contributor => "MyString",
      :isbn => 1,
      :rating => 1,
      :following => false,
      :approved => false,
      :active => false
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "textarea#book_summary[name=?]", "book[summary]"

      assert_select "input#book_author[name=?]", "book[author]"

      assert_select "input#book_picture[name=?]", "book[picture]"

      assert_select "input#book_contributor[name=?]", "book[contributor]"

      assert_select "input#book_isbn[name=?]", "book[isbn]"

      assert_select "input#book_rating[name=?]", "book[rating]"

      assert_select "input#book_following[name=?]", "book[following]"

      assert_select "input#book_approved[name=?]", "book[approved]"

      assert_select "input#book_active[name=?]", "book[active]"
    end
  end
end

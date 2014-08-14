json.array!(@books) do |book|
  json.extract! book, :id, :title, :summary, :author, :picture, :contributor, :isbn, :rating, :following, :approved, :active
  json.url book_url(book, format: :json)
end

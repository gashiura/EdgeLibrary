json.books do
  json.array!(@books) do |book|
    json.partial!(book)
    json.status(book.status)
    json.image_url(book.image_url)
  end
end
json.book do
  json.partial!(@book)
  json.status(@book.status)
  json.image_url(@book.image_url)
  json.set! :reviews do
    json.array!(@book.reviews) do |review|
      json.partial! partial: 'api/reviews/review', locals: { review: review }
      json.uid(review.user.uid)
    end
  end
end

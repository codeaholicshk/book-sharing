json.array!(@books) do |book|
  json.extract! book, :id, :name, :reference_url, :suggested_by
  json.url book_url(book, format: :json)
end

json.extract! book, :id, :author, :category, :description, :condition, :typ, :titel, :price, :created_at, :updated_at
json.url book_url(book, format: :json)

json.extract! book, :id, :title, :description, :photo, :genre, :agerange, :pagecount, :wordcount, :releasedate, :blurb, :excerpt, :type, :format, :relatedlink, :created_at, :updated_at
json.url book_url(book, format: :json)

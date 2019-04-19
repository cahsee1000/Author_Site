json.extract! blog, :id, :title, :date, :picture, :content, :created_at, :updated_at
json.url blog_url(blog, format: :json)

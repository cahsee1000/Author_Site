json.extract! event, :id, :date, :location, :title, :description, :map, :relatedbookid, :created_at, :updated_at
json.url event_url(event, format: :json)

json.extract! mystream, :id, :name, :dept, :created_at, :updated_at
json.url mystream_url(mystream, format: :json)

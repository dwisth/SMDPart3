json.array!(@event_posts) do |event_post|
  json.extract! event_post, :id, :title, :msg
  json.url event_post_url(event_post, format: :json)
end

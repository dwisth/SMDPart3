json.array!(@events) do |event|
  json.extract! event, :id, :name, :location, :date, :startTime, :endTime, :description, :membersOnly
  json.url event_url(event, format: :json)
end

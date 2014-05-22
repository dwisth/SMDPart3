json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :ticketType, :price
  json.url ticket_url(ticket, format: :json)
end

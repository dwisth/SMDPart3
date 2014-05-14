json.array!(@societies) do |society|
  json.extract! society, :id, :name, :description, :membershipFee, :verified
  json.url society_url(society, format: :json)
end

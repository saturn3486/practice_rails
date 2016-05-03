json.array!(@tichets) do |tichet|
  json.extract! tichet, :id, :name, :seat_id, :address, :price_paid
  json.url tichet_url(tichet, format: :json)
end

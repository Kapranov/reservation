json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :table, :start, :end
  json.url reservation_url(reservation, format: :json)
end

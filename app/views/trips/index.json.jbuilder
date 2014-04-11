json.array!(@trips) do |trip|
  json.extract! trip, :id, :location, :trip_start_date, :trip_end_date, :description
  json.url trip_url(trip, format: :json)
end

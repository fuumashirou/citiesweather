json.array!(@cities) do |city|
  json.extract! city, :id, :name, :country_name, :temp_max
  json.url city_url(city, format: :json)
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 ["Valladolid, España", "Santiago, Chile", "Paris, Francia", "Bogota, Colombia", "La paz, Bolivia"].each do |data|
city_name, country_name = data.split(', ')
response = OpenWeather::Current.city(data)
temp_max = response["main"]["temp_max"]

City.create name: city_name, country_name: country_name, temp_max: temp_max
end
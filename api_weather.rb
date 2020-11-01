require "http"

puts "Type in a city to learn its weather: "
user_input = gets.chomp

weather = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{user_input}&units=imperial&appid=#{ENV['OPEN_WEATHER_API_KEY']}").parse

# pp weather

temperature = weather['main']['temp']

description = weather['weather'][0]['description']

city = weather['name']

puts "It is currently #{temperature} with #{description} in #{city}."
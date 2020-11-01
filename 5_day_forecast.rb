require "http"

puts "Enter a city to learn its five day forecast: "
user_input = gets.chomp

five_day_forecast = HTTP.get("http://api.openweathermap.org/data/2.5/forecast?q=#{user_input}&units=imperial&appid=#{ENV['OPEN_WEATHER_API_KEY']}").parse


temperature = five_day_forecast['list'][1]['main']['temp']


pp five_day_forecast['list']



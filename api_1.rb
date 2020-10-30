require "http"

slumlord = HTTP.get("https://data.cityofchicago.org/resource/n5zj-r44u.json").parse


puts "Here is a list of problem landlords:"
i = 0
while i < slumlord.length-1
    puts "Name:"
    puts slumlord[i]["respondent"]
    puts "Address:"
    puts slumlord[i]["address"]
  i += 1 
end
# p slumlord[0]["respondent"]
# pp slumlord
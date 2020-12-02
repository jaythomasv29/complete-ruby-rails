dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancsico" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717",
}

# get city names from hash
def get_city_names(hash)
  hash.keys # return the city names as an array
end

# get area code based on given hash and key
def get_area_code(hash, key)
  hash[key] # return the area code based on the key
end

def get_city_from_user(area_codes)
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  if gets.chomp.downcase == "y"
    # if yes, we shall print the city names
    puts "Which city do you want the area code for?"
    get_city_names(area_codes).each { |city| puts city } # print the city names
    puts "Enter your selection"
    city = gets.chomp.downcase # get city input
    puts "The area code for #{city} is #{get_area_code(area_codes, city)}"
    return true
  else
    return false
  end
end

loop do
  break if get_city_from_user(dial_book) == false
  get_city_from_user(dial_book)
end

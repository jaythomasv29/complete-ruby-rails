str = "welcome to the jungle"
# .gsub
# .sub

str.sub!("jungle", "moon") # bang operator

arr = [1, 2, 3, 4, 5]
p arr.shuffle!

# Hashes

people = {
  name: "James",
  age: 28,
  sex: "Male",
}
# p people_hash[:name]

symbols_as_keys = {
  one: "two",
  three: "four",
}

people.keys
people.values

symbols_as_keys.each do |k, v|
  p "#{k},#{v}"
end

symbols_as_keys[:five] = "six"
p symbols_as_keys

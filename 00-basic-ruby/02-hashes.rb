my_details = { name: "James", favcolor: "Grey" }
p my_details[:favcolor]

myhash = { a: 1, b: 2, c: 3, d: 4 }

myhash[:a] # access it using symbols

myhash[:e] = 5

# myhash.delete(:a)

myhash.each do |k, v|
  puts "#{k},#{v}"
end

myhash.each do |k, v|
  myhash.delete(k) if v >= 3
end

p myhash

p myhash.select { |k, v| v.odd? }

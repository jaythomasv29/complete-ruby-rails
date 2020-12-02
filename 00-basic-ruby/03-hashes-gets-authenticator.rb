=begin
1 prompts This program will take input from the user and compare password
2 promps user for a username
3 prompts user for a password

  4 if user and password is correct #=> return the correct key and value pair
  5 if user password is wrong
  6 the user can exit the program by typing 'q' or type any other key to continue

=end

database = [
  {
  "username" => "admin",
  "password" => "admin123",
},
{ "username" => "james123",
  "password" => "9292" },
{ "username" => "jantira",
  "password" => "natnat29" }
]

def login(database)
  puts "This program will take input from the user and compare password to login"
  print 'Username: '
  username = gets.chomp
  print 'Password: '
  password = gets.chomp
  database.each do |ele|
    if ele["username"] == username && ele["password"] == password
      p 'Login successful username'
      break
      # puts {username:, username, password: password}
    end
    puts "Login failed..."
  end

  p "Want to try another username/password? Press any key or type 'q' to quit"
  continue = gets.chomp
  return false if continue == 'q'
  true
end

while login(database) == true
  next
end
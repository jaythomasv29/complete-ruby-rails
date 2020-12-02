require "bcrypt"

# my_password = BCrypt::Password.create("my password") # CREATE - MAKES THE HAS
# #=> "$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey"

# puts my_password

# my_password = BCrypt::Password.new("$2a$12$oEcOqbJwVqMLgenn2QW8NOvLANrNB27QTolr99mvxY9yyGv1BOL3i") # NEW
# p my_password == "my password"     #=> true
# my_password == "not my password" #=> false

def create_salt_pw(password)
  return BCrypt::Password.create(password) # using bcrpyt on password to salt password
end

def verify_password(salted_pw)
  BCrypt::Password.new(salted_pw)
end

p1 = create_salt_pw("Jameson2992!")
puts p1
p verify_password(p1)

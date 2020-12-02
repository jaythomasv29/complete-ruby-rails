# require "bundler/inline"
require "bcrypt"

module Crud
  p "crud module loaded successfully"

  def create_hash_digest(password)
    BCrypt::Password.create(password) # takes in a password as a parameter and salts the password to make it more secure
  end

  def verify_hash_digest(password)
    BCrypt::Password.new(password) # takes in a password and uses bcrpyt to verify the password to authenticate
  end

  def create_secure_users(list_of_users)
    list_of_users.each do |user_record| # enumerates through the array of hashes to modify each password key/value pair
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end

  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user|
      if user[:username] == username && verify_hash_digest(user[:password]) == password
        puts "Login successful"
        puts user
        return true
      end
    end
    puts "Credentials were not correct"
    return false
  end
end

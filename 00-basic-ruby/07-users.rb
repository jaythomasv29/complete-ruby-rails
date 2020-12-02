require_relative "06-crud-bcrypt"

users = [
  { username: "mashrur", password: "password1" },
  { username: "james", password: "pass123" },
  { username: "nat", password: "nat123" },
  { username: "admin", password: "admin" },
]

secure_users = Crud.create_secure_users(users)
p secure_users

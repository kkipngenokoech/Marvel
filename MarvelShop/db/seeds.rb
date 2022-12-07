# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# creating an admin role
admin = User.create(email: "admin@marvelshop.com",username: "admin",password: "!Admin_001",role: true)
sysadmin = User.create(email: "sysadmin@marvelshop.com",username: "sysadmin", password: "!Sysadmin_001", role: true)

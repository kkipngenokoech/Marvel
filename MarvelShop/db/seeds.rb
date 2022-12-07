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
image_files = Dir.glob("app/assets/images/tshirts/*")

image_files.each do |image_file|
    # Read the image file and encode it as a base64 string
    image_data = File.read(image_file)
    #encoded_image = Base64.encode64(image_data)
    # tshirt = Tshirt.new
    tshirt = Tshirt.create(
        size: ['S', 'L', 'XL', 'XLL'].sample,
        color: ['Red', 'Blue', 'Green', 'Yellow'].sample,
        character: ["spiderman", "Hulk","Captain America", "Doctor strange","Black Panther", "Iron Man"].sample
    )
    tshirt.image.attach(io: StringIO.new(image_data), filename: image_file)
    tshirt.save!
end
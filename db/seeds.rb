# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.destroy_all
User.destroy_all
Lesson.destroy_all
Trainer.destroy_all
Client.destroy_all



p "Created #{AdminUser.count} admin users"

User.create!(email: "test01@test.org", password: "password")
User.create!(email: "test02@test.org", password: "password")
User.create!(email: "test03@test.org", password: "password")
User.create!(email: "test04@test.org", password: "password")
User.create!(email: "test05@test.org", password: "password")
User.create!(email: "test06@test.org", password: "password")

p "Created #{User.count} users"

Trainer.create!(first_name: "John", last_name: "Doe1", bio: "abc", user_id: 1)
Trainer.create!(first_name: "John", last_name: "Doe2", bio: "abc", user_id: 2)
Trainer.create!(first_name: "John", last_name: "Doe3", bio: "abc", user_id: 3)

p "Created #{Trainer.count} trainers"

Client.create!(first_name: "Jane", last_name: "Doe4", bio: "abc", user_id: 4)
Client.create!(first_name: "Jane", last_name: "Doe5", bio: "abc", user_id: 5)
Client.create!(first_name: "Jane", last_name: "Doe6", bio: "abc", user_id: 6)

p "Created #{Client.count} clients"

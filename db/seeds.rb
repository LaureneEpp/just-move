# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Lesson.destroy_all
Trainer.destroy_all
Client.destroy_all




# User.create!(first_name: email: "test01@test.org", password: "password")
# User.create!(email: "test02@test.org", password: "password")
# User.create!(email: "test03@test.org", password: "password")
# User.create!(email: "test04@test.org", password: "password")
# User.create!(email: "test05@test.org", password: "password")
# User.create!(email: "test06@test.org", password: "password")
# User.create!(email: "test07@test.org", password: "password")
# User.create!(email: "test08@test.org", password: "password")
# User.create!(email: "test09@test.org", password: "password")
# User.create!(email: "test10@test.org", password: "password")

# p "Created #{User.count} users"

Lesson.create!(title: "lesson01", duration: "60", cost:"10", category: "1", level: 1, description: "abc", language: "EN")
Lesson.create!(title: "lesson02", duration: "60", cost:"10", category: "1", level: 1, description: "abc", language: "EN")
Lesson.create!(title: "lesson03", duration: "60", cost:"10", category: "1", level: 1, description: "abc", language: "EN")
Lesson.create!(title: "lesson04", duration: "60", cost:"10", category: "1", level: 1, description: "abc", language: "EN")
Lesson.create!(title: "lesson05", duration: "60", cost:"10", category: "1", level: 1, description: "abc", language: "EN")
Lesson.create!(title: "lesson06", duration: "60", cost:"10", category: "1", level: 1, description: "abc", language: "EN")

p "Created #{Lesson.count} lessons"

# Client.create!(first_name: "John", last_name: "Doe4", bio: "abc", user_id: 4)
# Client.create!(first_name: "John", last_name: "Doe5", bio: "abc", user_id: 5)
# Client.create!(first_name: "John", last_name: "Doe6", bio: "abc", user_id: 6)
# Client.create!(first_name: "John", last_name: "Doe9", bio: "abc", user_id: 9)
# Client.create!(first_name: "John", last_name: "Doe10", bio: "abc", user_id: 10)

# p "Created #{Client.count} clients"

# Trainer.create!(first_name: "John", last_name: "Doe1", bio: "abc", experience: "abc", user_id: 1)
# Trainer.create!(first_name: "John", last_name: "Doe2", bio: "abc", experience: "abc", user_id: 2)
# Trainer.create!(first_name: "John", last_name: "Doe3", bio: "abc", experience: "abc", user_id: 3)
# Trainer.create!(first_name: "John", last_name: "Doe7", bio: "abc", experience: "abc", user_id: 7)
# Trainer.create!(first_name: "John", last_name: "Doe8", bio: "abc", experience: "abc", user_id: 8)

# p "Created #{Trainer.count} trainers"

# Schedule.create(title: "test", trainer_id: 1)
# Schedule.create(title: "test", trainer_id: 1)
# Schedule.create(title: "test", trainer_id: 3)
# Schedule.create(title: "test", trainer_id: 4)

# p "Created #{Schedule.count} schedules"


Role.destroy_all
Task.destroy_all
User.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create(role: "admin", adminYN: 1)
Role.create(role: "manager", adminYN: 0)
Role.create(role: "emp", adminYN: 0)

ellyn = User.create(email: "1@1.com", first_name: "ellyn test", last_name: "anderson test", unit: "idk", password_digest: "1234", role: "admin")
asif = User.create(email: "2@2.com", first_name: "asif test", last_name: "idk his last name test", unit: "dope one", password_digest: "1234", role: "manager")
joseph = User.create(email: "3@3.com", first_name: "j test", last_name: "idk his last name test2", unit: "closest to admin", password_digest: "1234", role: "emp")


Task.create(user_id: 1, emp_id: 2, client: "a client", completed: 0, start_date: "2019-12-1", end_date: "2019-12-2", comp_date: "2019-12-30", description: "test", notes: "")
Task.create(user_id: 2, emp_id: 1, client: "a client2", completed: 0, start_date: "2019-12-1", end_date: "2019-12-15", comp_date: "2019-12-30", description: "test2", notes: "")
Task.create(user_id: 1, emp_id: 2, client: "a client3", completed: 0, start_date: "2019-12-1", end_date: "2019-12-30", comp_date: "2019-12-30", description: "test3", notes: "there are notes in this one")



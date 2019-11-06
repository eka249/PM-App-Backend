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

Role.create(role: "admin")
Role.create(role: "manager")
Role.create(role: "emp")

ellyn = User.create(email: "1@1.com", first_name: "ellyn test", last_name: "anderson test", unit: "idk", password_digest: "1234")
asif = User.create(email: "2@2.com", first_name: "asif test", last_name: "idk his last name test", unit: "dope one", password_digest: "1234")


Task.create(user_id: 1, manager_id: 2, client: "a client", completed: 0, start_date: "2019-12-1", end_date: "2019-12-2")
Task.create(user_id: 2, manager_id: 1, client: "a client2", completed: 0, start_date: "2019-12-1", end_date: "2019-12-15")
Task.create(user_id: 1, manager_id: 2, client: "a client3", completed: 0, start_date: "2019-12-1", end_date: "2019-12-30")



# Role.destroy_all
# Task.destroy_all
# User.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Role.create(role: "admin")
# Role.create(role: "manager")
# Role.create(role: "emp")

ellyn = Admin.create(email: "ellyn@1.com", password: "1234")

# ellyn = User.create(email: "1@1.com", first_name: "ellyn test", last_name: "anderson test", unit: "idk", password_digest: "1234")
asif = User.create(manager: 0, email: "2@2.com", first_name: "asif test", last_name: "idk his last name test", unit: "dope one", password: "1234")


Task.create(client: "a client", complete: 0, start_date: "2019-12-1", end_date: "2019-12-2", notes: "", desc: "a test task that wwon't take to long!", date_comp: "2019-12-30")
Task.create(client: "a client", complete: 0, start_date: "2019-12-1", end_date: "2019-12-2", notes: "", desc: "a test task that wwon't take to long!", date_comp: "2019-12-30")
Task.create(client: "a client", complete: 0, start_date: "2019-12-1", end_date: "2019-12-2", notes: "", desc: "very important!", date_comp: "2019-12-30")
Task.create(client: "a client", complete: 0, start_date: "2019-12-1", end_date: "2019-12-2", notes: "", desc: "this task is a special one", date_comp: "2019-12-30")
Task.create(client: "a client", complete: 0, start_date: "2019-12-1", end_date: "2019-12-2", notes: "", desc: "ASIF-IF YOU DON'T TAKE CARE OF THIS YOU'RE FIRED", date_comp: "2019-12-30")



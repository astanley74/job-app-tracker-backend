# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(first_name: "Austin", last_name: "Franklin", email: "austinfranklin@gmail.com")
job_app = JobApplication.create(company_name: "Apple", date_of_application: Date.today, position: "Software Engineer", application_status: true, current_stage: "Phone Interview", notes: "Great Company", user_id: user.id)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(
	email: "mitch@onprem.com")

Project.create(
	title: "TVE Assessment",
	client: "Discovery Communications",
	caption: "Sourced the world's best TVE vendors for a broadcaster",
	description: "OnPrem worked with a major US broadcaster to build out a five-year TV Everywhere roadmap")

10.times do 
	Project.create(
		title: Faker::Company.bs.capitalize,
		client: Faker::Company.name,
		caption: Faker::Lorem.sentence(rand(3 + 6)),
		description: Faker::Lorem.paragraph)
end
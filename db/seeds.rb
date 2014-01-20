# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create master user
user = User.create(
	email: "mitch@onprem.com")
p "User created"

# Reset/create industries
Industry.delete_all
Industry.create(name: "Broadcast")
Industry.create(name: "Film")
Industry.create(name: "Music")
Industry.create(name: "Nonprofit")
Industry.create(name: "Other")
p "Industries set to defaults"

# Reset/create projects
Project.delete_all
20.times do 
	Project.create(
		title: Faker::Company.bs.capitalize,
		client: Faker::Company.name,
		caption: Faker::Lorem.sentence(rand(3 + 6)),
		description: Faker::Lorem.paragraph)
end

Project.all.each do |project|
	project.industry = Industry.all.sample
	project.save
end
p "Projects set to defaults"

# Reset/create people
Person.delete_all
Person.create(
	first_name: "Mitch",
	last_name: "Seaman",
	bio: "Here is a little information about me.",
	alma_mater: "UCLA",
	linkedin: "linkedin.com/in/mitchelseaman",
	email: "mitch@onprem.com")
Person.create(
	first_name: "Eric",
	last_name: "Chen",
	bio: "Eric Chen is a certified badass with a n award-winning smile.",
	alma_mater: "Harvard",
	linkedin: "",
	email: "eric.chen0121@gmail.com")
Person.create(
	first_name: "Addison",
	last_name: "Huddy",
	bio: "",
	alma_mater: "UCLA",
	linkedin: "",
	email: "addisonhuddy@gmail.com")
Person.create(
	first_name: "Clint",
	last_name: "Mullins",
	bio: "",
	alma_mater: "Connecticut",
	linkedin: "",
	email: "clintfmullins@gmail.com")
Person.create(
	first_name: "Daniel",
	last_name: "Willems",
	bio: "",
	alma_mater: "Oberlin",
	linkedin: "",
	email: "dmkwillems@gmail.com")
Person.create(
	first_name: "Maria",
	last_name: "Piper",
	bio: "",
	alma_mater: "Berkeley",
	linkedin: "",
	email: "maria.b.piper@gmail.com")
Person.create(
	first_name: "Adam",
	last_name: "Loo",
	bio: "",
	alma_mater: "Berkeley",
	linkedin: "",
	email: "adamloo85@gmail.com")
Person.create(
	first_name: "Zassmin",
	last_name: "Montes De Oca",
	bio: "",
	alma_mater: "",
	linkedin: "",
	email: "zmontesd@gmail.com")
Person.create(
	first_name: "Sherif",
	last_name: "Abushadi",
	bio: "",
	alma_mater: "",
	linkedin: "",
	email: "sherif@devbootcamp.com")
p "People set to defaults"

# Reset/create slides
Slide.delete_all
Slide.create(
  header: "We Work Hard.",
  quote: "What do you mean 'sleep?'",
  author: "Christophe Ponsart",
  author_title: "Founding Partner")
Slide.create(
  header: "We Play Hard.",
  quote: "I love these people so much.",
  author: "David Liu",
  author_title: "Senior Manager")
Slide.create(
  header: "We Build a Reputation.",
  quote: "I don't see how we would ever hire anyone else.",
  author: "Bill Client",
  author_title: "CTO, Megacorp")
Slide.create(
  header: "We Innovate.",
  quote: "It's like they had a conversation with me in 5 years and relayed the message.",
  author: "David Allen",
  author_title: "VP, Disnay")
Slide.create(
  header: "We Know Media.",
  quote: "This is the team building the future of entertainment.",
  author: "Margi Clarke",
  author_title: "TV Personality")
p "Projects set to defaults"

p "Seed complete."
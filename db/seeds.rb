# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# # Create master user
# user = User.create(
# 	email: "mitch@onprem.com")
# p "User created"

# Reset/create industries
Industry.delete_all
Industry.create(name: "Broadcast")
Industry.create(name: "Film")
Industry.create(name: "Music")
Industry.create(name: "Nonprofit")
Industry.create(name: "Other")
p "Industries set to defaults"

Page.delete_all
Page.create(name:"index",description:"/")
Page.create(name:"about",description:"/about")
Page.create(name:"offerings",description:"/offerings")
Page.create(name:"work",description:"/work")
Page.create(name:"team",description:"/team")
Page.create(name:"careers",description:"/careers")
Page.create(name:"innovation",description:"/innovation")
Page.create(name:"contact",description:"/contact")

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
Person.create(first_name:"Alison",last_name:"Gordon",title:"Senior Consultant",email:"alison_gordon@onprem.com",linkedin:"http://www.linkedin.com/pub/alison-gordon/2/369/2a7")
Person.create(first_name:"Andrea",last_name:"Mackenzie",title:"Project Manager",email:"andrea_mackenzie@onprem.com",linkedin:"http://www.linkedin.com/in/andreamackenzie")
Person.create(first_name:"Andrew",last_name:"Haines",title:"Consultant",email:"andrew@onprem.com",linkedin:"")
Person.create(first_name:"Bart",last_name:"Shuler",title:"Project Manager",email:"bart@onprem.com",linkedin:"http://www.linkedin.com/pub/bartholomew-shuler/26/362/a6b")
Person.create(first_name:"Candice",last_name:"Lu",title:"Partner",email:"candice@onprem.com",linkedin:"http://www.linkedin.com/pub/candice-s-lu/0/439/93a")
Person.create(first_name:"Chantel",last_name:"Contaste",title:"Senior Consultant",email:"chantel@onprem.com",linkedin:"http://www.linkedin.com/in/chantelcontaste")
Person.create(first_name:"Christophe",last_name:"Ponsart",title:"Partner",email:"christophe@onprem.com",linkedin:"http://www.linkedin.com/pub/christophe-ponsart/1/a28/81a")
Person.create(first_name:"Daniel",last_name:"Lee",title:"Senior Consultant",email:"dlee@onprem.com",linkedin:"")
Person.create(first_name:"Daniel",last_name:"Pyke",title:"Senior Consultant",email:"daniel@onprem.com",linkedin:"http://www.linkedin.com/pub/daniel-pyke/8/5ba/805")
Person.create(first_name:"Dave",last_name:"Liu",title:"Senior PM",email:"dave@onprem.com",linkedin:"http://www.linkedin.com/in/davidcliu")
Person.create(first_name:"Faisal",last_name:"Mahmoud",title:"Senior PM",email:"faisal@onprem.com",linkedin:"http://www.linkedin.com/in/faisalmahmoud")
Person.create(first_name:"Frank",last_name:"Leal",title:"Partner",email:"frank@onprem.com",linkedin:"http://www.linkedin.com/pub/frank-leal/1/929/189")
Person.create(first_name:"Hassan",last_name:"Wharton-Ali",title:"Senior PM",email:"hass@onprem.com",linkedin:"http://www.linkedin.com/pub/hassan-wharton-ali/0/667/77")
Person.create(first_name:"Jessica",last_name:"Gutierrez",title:"Senior Consultant",email:"jessica@onprem.com",linkedin:"http://www.linkedin.com/pub/jessica-gutierrez/31/b48/b51")
Person.create(first_name:"Jon",last_name:"Christian",title:"Partner",email:"jon@onprem.com",linkedin:"http://www.linkedin.com/pub/jon-christian/0/2a0/a70")
Person.create(first_name:"Kate",last_name:"deSousa",title:"Project Manager",email:"kate@onprem.com",linkedin:"http://www.linkedin.com/pub/kate-desousa/5/57/917")
Person.create(first_name:"Katlyn",last_name:"Schlatter",title:"Project Manager",email:"katlyn@onprem.com",linkedin:"http://www.linkedin.com/pub/katlyn-schlatter/7/79/760")
Person.create(first_name:"Laura",last_name:"Donkervoet",title:"Senior Consultant",email:"laura@onprem.com",linkedin:"http://www.linkedin.com/pub/laura-personal-donkervoet/21/807/718")
Person.create(first_name:"Matthew",last_name:"Andrews",title:"",email:"mandrews@onprem.com",linkedin:"")
Person.create(first_name:"Matt",last_name:"Anderson",title:"Senior Consultant",email:"matt@onprem.com",linkedin:"http://www.linkedin.com/in/amattanderson")
Person.create(first_name:"Megan",last_name:"Horner",title:"Senior Consultant",email:"megan@onprem.com",linkedin:"http://www.linkedin.com/pub/megan-horner/2/a84/5b2")
Person.create(first_name:"Michael",last_name:"Leal",title:"Recruiter",email:"mikel@onprem.com",linkedin:"http://www.linkedin.com/pub/michael-leal/69/b32/6a3")
Person.create(first_name:"Michael",last_name:"Whang",title:"Senior PM",email:"mike@onprem.com",linkedin:"http://www.linkedin.com/pub/michael-whang/3/733/305")
Person.create(first_name:"Mitch",last_name:"Seaman",title:"Senior Consultant",email:"mitch@onprem.com",linkedin:"http://www.linkedin.com/in/mitchelseaman/")
Person.create(first_name:"Rachel",last_name:"Kelley",title:"Project Manager",email:"rachel@onprem.com",linkedin:"http://www.linkedin.com/pub/rachel-kelley/5/a56/918")
Person.create(first_name:"Sanjay",last_name:"Dilawari",title:"Senior Consultant",email:"sanjay@onprem.com",linkedin:"http://www.linkedin.com/in/sanjaykd")
Person.create(first_name:"Tu",last_name:"Quach",title:"Senior PM",email:"tu@onprem.com",linkedin:"http://www.linkedin.com/in/tuquach")
Person.create(first_name:"Tyler",last_name:"Jury",title:"Project Manager",email:"tyler@onprem.com",linkedin:"http://www.linkedin.com/pub/tyler-jury/19/389/156")
Person.create(first_name:"Vanessa",last_name:"Fiola",title:"Director",email:"vanessa@onprem.com",linkedin:"http://www.linkedin.com/pub/vanessa-fiola/1/2a2/66a")
Person.create(first_name:"Yuna",last_name:"Oh",title:"Senior Consultant",email:"yuna@onprem.com",linkedin:"http://www.linkedin.com/in/yunaoh")
# Person.create(
# 	first_name: "Mitch",
# 	last_name: "Seaman",
# 	bio: "Here is a little information about me.",
# 	alma_mater: "UCLA",
# 	linkedin: "linkedin.com/in/mitchelseaman",
# 	email: "mitch@onprem.com")
# Person.create(
# 	first_name: "Eric",
# 	last_name: "Chen",
# 	bio: "Eric Chen is a certified badass with a n award-winning smile.",
# 	alma_mater: "Harvard",
# 	linkedin: "",
# 	email: "eric.chen0121@gmail.com")
# Person.create(
# 	first_name: "Addison",
# 	last_name: "Huddy",
# 	bio: "",
# 	alma_mater: "UCLA",
# 	linkedin: "",
# 	email: "addisonhuddy@gmail.com")
# Person.create(
# 	first_name: "Clint",
# 	last_name: "Mullins",
# 	bio: "",
# 	alma_mater: "Connecticut",
# 	linkedin: "",
# 	email: "clintfmullins@gmail.com")
# Person.create(
# 	first_name: "Daniel",
# 	last_name: "Willems",
# 	bio: "",
# 	alma_mater: "Oberlin",
# 	linkedin: "",
# 	email: "dmkwillems@gmail.com")
# Person.create(
# 	first_name: "Maria",
# 	last_name: "Piper",
# 	bio: "",
# 	alma_mater: "Berkeley",
# 	linkedin: "",
# 	email: "maria.b.piper@gmail.com")
# Person.create(
# 	first_name: "Adam",
# 	last_name: "Loo",
# 	bio: "",
# 	alma_mater: "Berkeley",
# 	linkedin: "",
# 	email: "adamloo85@gmail.com")
# Person.create(
# 	first_name: "Zassmin",
# 	last_name: "Montes De Oca",
# 	bio: "",
# 	alma_mater: "",
# 	linkedin: "",
# 	email: "zmontesd@gmail.com")
# Person.create(
# 	first_name: "Sherif",
# 	last_name: "Abushadi",
# 	bio: "",
# 	alma_mater: "",
# 	linkedin: "",
# 	email: "sherif@devbootcamp.com")
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
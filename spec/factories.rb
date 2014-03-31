FactoryGirl.define do

	factory :admin, class: User do
		email "mitch@onprem.com"
		admin true
	end

	factory :page do
		name "about"
		description "My description"
		display_name "Home"
		display_order "1"
	end

	factory :project do
		title "Project"
		client "XYZ Corp"
		caption "World's greatest project"
		description "Gobbledigook"
	end

	factory :person do
		first_name "Neil"
		last_name "Young"
		bio "Too long to type"
		linkedin "www.linkedin.com/pub/neil-young/0/113/b84"
		email "neil@onprem.com"
		title "Director"
		phone "8582139043"
		twitter "https://twitter.com/Neilyoung"
		github "https://github.com/bmabey"
	end

	factory :slide do
		header "Header"
	end

	factory :school do
		name "School Name"
	end

	factory :industry do
		name "Industry"
	end

end
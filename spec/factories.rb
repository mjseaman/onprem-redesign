FactoryGirl.define do

	factory :admin, class: User do
		email "mitch@onprem.com"
		# password: "password"
		# password_confirmation: "password"
	end

end
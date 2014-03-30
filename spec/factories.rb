FactoryGirl.define do
	factory :admin_role, class: Role do
		name "admin"
	end

	factory :admin, class: User do
		email "mitch@onprem.com"
		# password: "password"
		# password_confirmation: "password"
	end

	factory :admin_with_admin_role, parent: :admin do
		roles {[FactoryGirl.create(:admin_role)]}
	end

end
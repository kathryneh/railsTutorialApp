FactoryGirl.define do
	factory :user do
		name "Michael Hartl"
		password "foobar"
		password_confirmation "foobar"
		email "foo@bar.com"
	end
end
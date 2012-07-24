FactoryGirl.define do
  factory :user do
    name "Arnaud Lenglet"
    email "arnaud.lenglet@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
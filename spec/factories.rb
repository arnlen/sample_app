FactoryGirl.define do

  # Création d'un seul utilisateur
=begin
  factory :user do
    name "Arnaud Lenglet"
    email "arnaud.lenglet@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
=end

#  Création d'une séquence d'utilisateurs
  factory :user do
    sequence(:name){|n| "Person #{n}"}
    sequence(:email){|n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"

  #  Admin factory
    factory :admin do
      admin true
    end

  end

  factory :micropost do
    content "Lorem ipsum"
    user
  end
end
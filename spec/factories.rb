FactoryGirl.define do
  #factory :user do
  #  name      "Michael Hartl"
  #  email     "michael@example.com"
  #  password  "foobar"
  #  password_confirmation   "foobar"
  #end
  
  # Above replaced by new code on p. 407
  
  factory :user do
    sequence(:name)   { |n| "Person #{n}" }
    sequence(:email)  { |n| "person_#{n}@example.com" }
    password "foobar"
    password_confirmation "foobar"
    
    factory :admin do
      admin true
    end
  end
  
  factory :microposts do
    content "Lorem ipsum"
    user
  end
end
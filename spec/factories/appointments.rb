# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :appointment do
    date "MyString"
    hours "MyString"
    active false
  end
end

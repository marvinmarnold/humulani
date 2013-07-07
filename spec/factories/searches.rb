# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :search do
    keyword "Some word"
    check_in_at { Date.today + rand(200).days}
    check_out_at { check_in_at + rand(20).days}
    user
  end
end

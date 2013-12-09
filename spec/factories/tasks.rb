# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    description "MyString"
    owner ""
    due_date "2013-12-09 17:31:29"
    belongs_to ""
    actual_hrs 1
    status "MyString"
  end
end

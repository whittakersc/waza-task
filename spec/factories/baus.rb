# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bau do
    time_due "2013-12-09 20:01:22"
    report_tag "MyString"
    expected_hrs 1
  end
end

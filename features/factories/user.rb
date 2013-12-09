FactoryGirl.define do
  factory :user do
          email "b@company.com"
          password "qwertyuii"
          password_confirmation "qwertyuii"
          job_title "Analyst"
          name 'Andrew'
  end
end
FactoryGirl.define do

  factory :team1, class: Team do
          name "Financial Control"
          division "Retail"
  end

   factory :team, class: Team do
          name "Finance"
          division "Wealth"
  end

  factory :user, class: User do
 		email "a@a.com"
  		name "Simon"
  		password 'secret123'
  		password_confirmation 'secret123'
  		team_id "1"
  end

end
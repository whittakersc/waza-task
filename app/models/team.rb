class Team < ActiveRecord::Base

  has_many :users
  has_many :tasks
  has_many :projects
  has_many :baus

end

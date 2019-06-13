class Team < ApplicationRecord
  belongs_to :match
  has_many :user_teams
  has_many :users, through: :user_teams
end

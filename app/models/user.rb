class User < ApplicationRecord
  has_many :user_teams
  has_many :teams, through: :user_teams
  has_many :scores

  has_secure_password
  validates :email, presence: true, uniqueness: true
  attribute :handicap_low_net, :integer, default: 0


  
end
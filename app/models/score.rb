class Score < ApplicationRecord
  belongs_to :team
  belongs_to :user

  validates :year, presence: true
end

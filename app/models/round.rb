class Round < ApplicationRecord
  belongs_to :course
  belongs_to :tournament
  has_many :matches
end

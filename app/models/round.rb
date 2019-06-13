class Round < ApplicationRecord
  belongs_to :course
  has_many :matches
end

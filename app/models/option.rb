class Option < ApplicationRecord
  has_many :comments
  validates :answer_one, :answer_two, :presence => true
end

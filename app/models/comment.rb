class Comment < ApplicationRecord
  belongs_to :option
  belongs_to :user
  validates :content, :presence => true
end

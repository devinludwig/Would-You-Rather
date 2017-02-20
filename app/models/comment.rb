class Comment < ApplicationRecord
  belongs_to :option
  validates :content, :presence => true
end

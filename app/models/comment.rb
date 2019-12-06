class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :echo
  validates :body, presence: true
end
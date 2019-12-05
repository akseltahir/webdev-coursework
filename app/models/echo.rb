class Echo < ApplicationRecord
  belongs_to :user
  acts_as_votable
  has_many :comments
  validates :title, :content, presence: true
end

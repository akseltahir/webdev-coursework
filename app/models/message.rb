class Message
    include ActiveModel::Model
    attr_accessor :name, :email, :body
    validates :email, :body, presence: true
  end
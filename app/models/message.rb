class Message < ActiveRecord::Base
  belongs_to :user
  acts_as_votable
  has_many :comments, as: :commentable
end

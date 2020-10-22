class Comment < ApplicationRecord
  belongs_to :user
  has_many :tweet_comments
  has_many :comments
end

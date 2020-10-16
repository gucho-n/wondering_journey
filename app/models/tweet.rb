class Tweet < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :comments
  
def self.search(search)
  if search != ""
    Tweet.where('name LIKE(?)', "%#{search}%")
  else
    Tweet.all
  end
end
end

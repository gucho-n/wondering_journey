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

# 詳細検索
def self.search(search)
  if search != ""
    Tweet.joins(:user).where('tweets.name LIKE(?)') 
  end
end



end

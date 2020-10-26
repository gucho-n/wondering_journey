class Tweet < ApplicationRecord
  has_one_attached :image
  belongs_to :user
 
  has_many :comments

# 基本検索
def self.search(search)
  if search != ""
    Tweet.where('name LIKE(?)', "%#{search}%")
  else
    Tweet.all
  end
end

# 詳細検索
def self.detailSarch(search)
  if search != ""
    Tweet.where('name LIKE(?)', "%#{search}%" )
    redirect_to root_path
  end
end



end

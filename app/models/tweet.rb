class Tweet < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  has_many :comments
  less_price = 1000
  over_price = 1000000
  validates :name,:address,:recommend,:cost,presence: true
  validates :cost, numericality: { only_interger: true }
  validates :cost, numericality: { greater_than_or_equal_to: less_price.to_i }
  validates :cost, numericality: { less_than_or_equal_to: over_price.to_i }
# 基本検索

def self.search(search)
  if search != ""
    Tweet.where('name LIKE(?) OR address LIKE(?)', "%#{search}%","%#{search}%")
   
  else
    Tweet.all
  end
end

# 詳細検索、なぜか増減するexpect
def self.name_Search(namekeyword)
  if namekeyword != ""
    Tweet.where(['name LIKE(?) && address LIKE(?)', "%#{namekeyword}%", "%#{namekeyword}%"])
  end
end

# 詳細検索、なぜか増減するexpect


end

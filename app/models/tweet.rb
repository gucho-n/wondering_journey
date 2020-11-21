class Tweet < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  has_many :comments
  less_price = 1000
  over_price = 1_000_000
  validates :name, :address, :recommend, :cost, presence: true
  validates :cost, numericality: { only_interger: true }
  validates :cost, numericality: { greater_than_or_equal_to: less_price.to_i }
  validates :cost, numericality: { less_than_or_equal_to: over_price.to_i }
  # 基本検索

  def self.nameSearch(search)
    Tweet.where('name LIKE(?)', "%#{search}%") if search != ''
  end

  def self.addressSearch(search)
    Tweet.where('address LIKE(?)', "%#{search}%") if search != ''
  end

  # # 詳細検索、なぜか増減するexpect
  # def self.name_Search(namekeyword)
  #   if namekeyword != ""
  #     Tweet.where(['name LIKE(?) && address LIKE(?)', "%#{namekeyword}%", "%#{namekeyword}%"])
  #   end
  # end

  # 詳細検索、なぜか増減するexpect
end

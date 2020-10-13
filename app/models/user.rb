class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :gender
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname,:gender_id,:age,:surname,:firstname,:surname_kana,:firstname_kana,presence: true
  
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX }
  
  VALID_NAME_REGEX = /\A[ぁ-んァ-ン一-龥]/.freeze
  validates :surname, format: { with: VALID_NAME_REGEX }
  validates :firstname, format: { with: VALID_NAME_REGEX }

  # 氏名用かな
  VALID_KANA_NAME_REGEX = /[\p{katakana} ー－&&[^ -~｡-ﾟ]]+/.freeze
  validates :surname_kana, format: { with: VALID_KANA_NAME_REGEX }
  validates :firstname_kana, format: { with: VALID_KANA_NAME_REGEX }

  # 氏名用かな
    VALID_AGE_REGEX = /\A[0-9]+\z/.freeze
    validates :age, format: { with: VALID_AGE_REGEX }
end

class Charity_user
  include ActiveModel::Model
  attr_accessor :comment, :user_id, :item_id, :token

  # # 名前のフォーマットのバリデーションを加える

  with_options presence: true do
    #   # 氏名用

    validates :token
  end

  def save
    # ユーザーの情報を保存し、「itempurchase」という変数に入れている
    charity = Charity.create(user_id: user_id, item_id: item_id, comment: comment)

    # クレジットカードの情報を保存

    # 住所の情報を保存
    Charity.create(user_id: user_id, item_id: item_id, comment: comment)
  end
end

# メモ用
# Q.attr_accessorの意味は？ストロングパラメーター
# attr_accessor :postcode, :phonenumber, :city, :block, :building, :address_id, :user_id, :item_id,:token,:item_purchase_id
# A.form.objectを使うキーは必ず明記する。（token）も必要

# Q.バリデーションはどうやって入れるの？
# A.with_options presence: true do〜endの間にバリデーションを加える。

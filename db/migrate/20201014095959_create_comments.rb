class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string  :text
      t.integer :tweet_id
      t.integer :like_id
      t.integer :user_id
      t.timestamps
    end
  end
end

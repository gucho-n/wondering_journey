class CreateCharities < ActiveRecord::Migration[6.0]
  def change
    create_table :charities do |t|
      t.timestamps
      t.integer :price
      t.text :comment
      t.integer :user_id
      t.integer :tweet_id
    end
  end
end

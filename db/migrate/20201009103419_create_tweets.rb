class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|

      t.timestamps
      t.string :name, null: false, default: ""
      t.string :address, null: false, default: ""
      # imageは保留
      t.string :recommend, null: false, default: ""
      t.integer :cost
      t.integer :user_id



    end
  end
end

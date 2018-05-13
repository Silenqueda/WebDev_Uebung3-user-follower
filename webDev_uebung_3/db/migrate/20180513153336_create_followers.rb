class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.string :follower
      t.text :body
      t.references :user, index: true

      t.timestamps
    end
    #add_index :followers, :user_id
  end
end

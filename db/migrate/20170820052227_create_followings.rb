class CreateFollowings < ActiveRecord::Migration[5.0]
  def change
    create_table :followings do |t|
      t.integer :user_id
      t.integer :twitter_entity_id

      t.timestamps
    end
  end
end

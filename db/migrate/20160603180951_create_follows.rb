class CreateFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :follows do |t|
      t.integer :user_id, index: true
      t.integer :astronaut_id, index: true

      t.timestamps
    end
  end
end

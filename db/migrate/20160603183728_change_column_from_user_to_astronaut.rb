class ChangeColumnFromUserToAstronaut < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :user_id, :astronaut_id 
  end
end

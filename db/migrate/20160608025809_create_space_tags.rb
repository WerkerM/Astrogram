class CreateSpaceTags < ActiveRecord::Migration[5.0]
  def change
    create_table :space_tags do |t|
      t.float :x
      t.float :y
      t.float :z
      t.string :relational_body
      t.string :units
      t.references :post, index: true, foreign_key: true
      t.timestamps
    end
  end
end

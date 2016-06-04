class AddVideosToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :video_url, :string
  end
end

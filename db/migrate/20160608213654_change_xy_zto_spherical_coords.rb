class ChangeXyZtoSphericalCoords < ActiveRecord::Migration[5.0]
  def change
    rename_column :space_tags, :x, :polar
    rename_column :space_tags, :y, :azimuth
    rename_column :space_tags, :z, :radius
  end
end

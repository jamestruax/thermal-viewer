class CreatePolygons < ActiveRecord::Migration
  def change
    create_table :polygons do |t|
      t.references :geometry, index: true

      t.timestamps
    end
  end
end

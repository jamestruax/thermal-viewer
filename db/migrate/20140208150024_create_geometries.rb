class CreateGeometries < ActiveRecord::Migration
  def change
    create_table :geometries do |t|

      t.timestamps
    end
  end
end

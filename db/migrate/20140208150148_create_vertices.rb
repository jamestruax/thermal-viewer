class CreateVertices < ActiveRecord::Migration
  def change
    create_table :vertices do |t|
      t.float :x
      t.float :y
      t.float :z
      t.references :polygon, index: true

      t.timestamps
    end
  end
end

class CreateRadThermModels < ActiveRecord::Migration
  def change
    create_table :rad_therm_models do |t|
      t.string :name
      t.references :geometry, index: true

      t.timestamps
    end
  end
end

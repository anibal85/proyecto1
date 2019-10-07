class CreateMeasurers < ActiveRecord::Migration[5.2]
  def change
    create_table :measurers do |t|
      t.string :id_measure
      t.string :name
      t.string :uni
      t.string :description
      t.integer :umbrail

      t.timestamps
    end
  end
end
